#!/usr/bin/env python3
"""Validate LiquidClock deb metadata, paths, plists, and Mach-O slices."""
from pathlib import Path
import argparse, hashlib, io, plistlib, struct, tarfile


def ar_members(path):
    data = Path(path).read_bytes()
    if not data.startswith(b'!<arch>\n'):
        raise ValueError('invalid ar magic')
    out = {}; pos = 8
    while pos < len(data):
        header = data[pos:pos + 60]
        if len(header) != 60 or header[58:60] != b'`\n':
            raise ValueError('invalid ar header')
        name = header[:16].decode('ascii').strip().rstrip('/')
        size = int(header[48:58].decode('ascii').strip())
        pos += 60
        out[name] = data[pos:pos + size]
        pos += size + (size & 1)
    return out


def tar_members(blob):
    with tarfile.open(fileobj=io.BytesIO(blob), mode='r:gz') as archive:
        result = {}
        for member in archive.getmembers():
            name = member.name.removeprefix('./').rstrip('/')
            result[name] = archive.extractfile(member).read() if member.isfile() else None
        return result


def macho(data, arch):
    if len(data) < 32 or struct.unpack_from('<I', data)[0] != 0xfeedfacf:
        raise ValueError('not a thin Mach-O')
    cpu, subtype = struct.unpack_from('<II', data, 4)
    expected = {'arm64': 0, 'arm64e': 0x80000002}[arch]
    if cpu != 0x100000c or subtype != expected:
        raise ValueError(f'wrong CPU/subtype {cpu:#x}/{subtype:#x}')
    ncmds = struct.unpack_from('<I', data, 16)[0]
    pos = 32; minimum = None; signature = None
    for _ in range(ncmds):
        cmd, size = struct.unpack_from('<II', data, pos)
        if size < 8 or pos + size > len(data):
            raise ValueError('invalid load command')
        if cmd == 0x32:
            platform, minimum = struct.unpack_from('<II', data, pos + 8)
            if platform != 2:
                raise ValueError('not iOS platform')
        if cmd == 0x1d:
            signature = struct.unpack_from('<II', data, pos + 8)
        pos += size
    if minimum != 0x100000:
        raise ValueError(f'wrong minimum OS {minimum!r}')
    if not signature:
        raise ValueError('missing code signature')
    start, length = signature
    if start + length > len(data) or struct.unpack_from('>I', data, start)[0] != 0xfade0cc0:
        raise ValueError('invalid embedded signature')
    return {'sha256': hashlib.sha256(data).hexdigest(), 'size': len(data), 'subtype': hex(subtype)}


def verify(path, arch):
    members = ar_members(path)
    if set(members) != {'debian-binary', 'control.tar.gz', 'data.tar.gz'}:
        raise ValueError('unexpected deb members')
    if members['debian-binary'] != b'2.0\n':
        raise ValueError('invalid debian-binary')
    control = tar_members(members['control.tar.gz'])
    data = tar_members(members['data.tar.gz'])
    fields = {}
    for line in control['control'].decode().splitlines():
        if ': ' in line:
            key, value = line.split(': ', 1); fields[key] = value
    expected_arch = 'iphoneos-arm64' if arch == 'arm64' else 'iphoneos-arm64e'
    if fields.get('Package') != 'com.ning.liquidclock' or fields.get('Version') != '0.1.1':
        raise ValueError('control package/version mismatch')
    if fields.get('Architecture') != expected_arch:
        raise ValueError('control architecture mismatch')
    for dependency in ('mobilesubstrate', 'preferenceloader', 'com.opa334.libsandy'):
        if dependency not in fields.get('Depends', ''):
            raise ValueError('missing dependency ' + dependency)
    prefix = 'var/jb/' if arch == 'arm64' else ''
    lib = prefix + 'Library/MobileSubstrate/DynamicLibraries/'
    pref = prefix + 'Library/PreferenceBundles/LiquidClockPrefs.bundle/'
    required = [
        lib + 'LiquidClock.dylib', lib + 'LiquidClockBackboard.dylib',
        lib + 'LiquidClock.plist', lib + 'LiquidClockBackboard.plist',
        lib + 'LiquidClockResources.bundle/ClockOnly.metallib',
        lib + 'LiquidClockResources.bundle/Fonts/SF-Compact-Display-Regular.otf',
        lib + 'LiquidClockResources.bundle/Fonts/SFAdaptiveSoftNumeric-VF.otf',
        pref + 'LiquidClockPrefs', pref + 'Info.plist', pref + 'Root.plist',
        prefix + 'Library/PreferenceLoader/Preferences/LiquidClockPrefs.plist',
        prefix + 'Library/libSandy/com.ning.liquidclock.plist',
    ]
    missing = [name for name in required if name not in data]
    if missing:
        raise ValueError('missing package paths: ' + repr(missing))
    host_filter = plistlib.loads(data[lib + 'LiquidClock.plist'])
    backboard_filter = plistlib.loads(data[lib + 'LiquidClockBackboard.plist'])
    if 'com.apple.springboard' not in host_filter.get('Filter', {}).get('Bundles', []):
        raise ValueError('SpringBoard filter missing')
    if backboard_filter.get('Filter', {}).get('Bundles') != ['com.apple.backboardd']:
        raise ValueError('Backboardd filter mismatch')
    info = plistlib.loads(data[pref + 'Info.plist'])
    if info.get('CFBundleExecutable') != 'LiquidClockPrefs' or info.get('NSPrincipalClass') != 'LACPreferences':
        raise ValueError('preference bundle metadata mismatch')
    entry = plistlib.loads(data[prefix + 'Library/PreferenceLoader/Preferences/LiquidClockPrefs.plist']).get('entry', {})
    if entry.get('isController') is not True or entry.get('detail') != 'LACPreferences':
        raise ValueError('preference loader entry mismatch')
    profile = plistlib.loads(data[prefix + 'Library/libSandy/com.ning.liquidclock.plist'])
    if 'com.apple.backboardd' not in profile.get('AllowedProcesses', []):
        raise ValueError('backboardd missing from Sandy profile')
    binaries = {}
    for name in (lib + 'LiquidClock.dylib', lib + 'LiquidClockBackboard.dylib', pref + 'LiquidClockPrefs'):
        binaries[name] = macho(data[name], arch)
    return {'path': str(path), 'arch': arch, 'size': Path(path).stat().st_size,
            'sha256': hashlib.sha256(Path(path).read_bytes()).hexdigest(),
            'data_files': len(data), 'binaries': binaries, 'control': fields}


if __name__ == '__main__':
    parser = argparse.ArgumentParser(); parser.add_argument('--arch', choices=['arm64', 'arm64e'], required=True); parser.add_argument('deb')
    args = parser.parse_args(); print(verify(args.deb, args.arch))
