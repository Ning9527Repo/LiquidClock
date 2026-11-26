#!/usr/bin/env python3
"""Build signed iOS native components; package assembly is separate."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]


def run(cmd):
    print('+', ' '.join(map(str, cmd)), flush=True)
    subprocess.run([str(x) for x in cmd], cwd=ROOT, check=True)


def sdk_path():
    override = os.environ.get('LAC_IOS_SDK')
    if override and Path(override).is_dir():
        return Path(override)
    return Path(subprocess.check_output(
        ['xcrun', '--sdk', 'iphoneos', '--show-sdk-path'], text=True).strip())


def compile_target(name, sources, frameworks, arch, sdk, out,
                   substrate=False, preference=False, bundle=False):
    objects = []
    headers = ROOT / 'Vendor' / 'Headers'
    object_dir = out / 'objects'
    object_dir.mkdir(parents=True, exist_ok=True)
    object_stem = Path(name).name
    for index, relative in enumerate(sources):
        source = ROOT / relative
        object_path = object_dir / f'{object_stem}-{index}.o'
        is_cpp = source.suffix in ('.mm', '.cpp')
        compiler = 'clang++' if is_cpp else 'clang'
        command = [
            'xcrun', '--sdk', 'iphoneos', compiler, '-arch', arch,
            '-isysroot', sdk, '-miphoneos-version-min=16.0', '-O2',
            '-Wall', '-Wextra', '-Werror', '-fvisibility=hidden',
            '-I', headers,
        ]
        command += ['-std=c++17'] if is_cpp else ['-std=c11']
        if source.suffix in ('.m', '.mm'):
            command += ['-fobjc-arc', '-fblocks']
        command += ['-c', source, '-o', object_path]
        run(command)
        objects.append(object_path)

    binary = out / name
    binary.parent.mkdir(parents=True, exist_ok=True)
    command = [
        'xcrun', '--sdk', 'iphoneos', 'clang++', '-arch', arch,
        '-isysroot', sdk, '-miphoneos-version-min=16.0',
    ]
    if bundle:
        command += ['-bundle', '-Wl,-undefined,dynamic_lookup']
    else:
        command += ['-dynamiclib', '-Wl,-install_name,@rpath/' + Path(name).name]
    command += ['-o', binary, *objects]
    for framework in frameworks:
        command += ['-framework', framework]

    if substrate:
        stub_dir = out / 'stubs'
        stub_dir.mkdir(exist_ok=True)
        install_name = '@loader_path/../../../usr/lib/libsubstrate.dylib'
        (stub_dir / 'libsubstrate.tbd').write_text(
            '--- !tapi-tbd\n'
            'tbd-version: 4\n'
            f'targets: [ {arch}-ios ]\n'
            f'install-name: "{install_name}"\n'
            'exports:\n'
            f'  - targets: [ {arch}-ios ]\n'
            '    symbols: [ _MSHookMessageEx, _MSHookFunction ]\n'
            '...\n'
        )
        command += ['-L', stub_dir, '-lsubstrate']
    if preference:
        command += ['-F', ROOT / 'Vendor' / 'Frameworks', '-framework', 'Preferences']

    run(command)
    run(['codesign', '--force', '--sign', '-', '--timestamp=none', binary])
    run(['codesign', '--verify', '--strict', binary])
    return binary


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--arch', choices=['arm64', 'arm64e'], required=True)
    parser.add_argument('--output', required=True)
    args = parser.parse_args()
    if sys.platform != 'darwin':
        raise SystemExit('iOS native build requires macOS/Xcode')

    out = Path(args.output).resolve()
    out.mkdir(parents=True, exist_ok=True)
    sdk = sdk_path()
    (out / 'sdk-path.txt').write_text(str(sdk) + '\n')

    core = [
        'src/clock/LACClockFieldPublisher.c',
        'src/clock/LACClockSDF.c',
        'src/clock/LACClockTextField.mm',
    ]
    editor = [str(path.relative_to(ROOT)) for path in sorted((ROOT / 'src/editor').glob('*.mm'))]
    host = compile_target(
        'LiquidClock.dylib',
        core + editor + [
            'src/clock/LACClockHooks.mm',
            'src/runtime/LACClockRuntime.mm',
            'src/runtime/LACConfiguration.mm',
        ],
        ['Foundation', 'UIKit', 'CoreText', 'CoreGraphics', 'QuartzCore'],
        args.arch, sdk, out, substrate=True,
    )

    backboard_sources = [
        str(path.relative_to(ROOT)) for path in sorted((ROOT / 'src/backboard').glob('*'))
        if path.suffix in ('.cpp', '.mm')
    ]
    if 'src/backboard/LACClockBackboard.mm' not in backboard_sources:
        raise SystemExit('Backboard implementation is missing')
    backboard = compile_target(
        'LiquidClockBackboard.dylib',
        backboard_sources + [
            'field/clock_field_reader.c',
            'src/clock/NGClockFieldCodec.c',
            'src/runtime/LACBackboardEntry.mm',
            'src/runtime/LACConfiguration.mm',
        ],
        ['Foundation', 'Metal', 'QuartzCore', 'CoreGraphics'],
        args.arch, sdk, out, substrate=True,
    )

    prefs = compile_target(
        'LiquidClockPrefs.bundle/LiquidClockPrefs',
        ['prefs/LACPreferences.mm', 'src/runtime/LACConfiguration.mm'],
        ['Foundation', 'UIKit', 'CoreGraphics'],
        args.arch, sdk, out, preference=True, bundle=True,
    )
    bundle = out / 'LiquidClockPrefs.bundle'
    import plistlib
    root = plistlib.loads((ROOT / 'prefs' / 'Root.plist').read_bytes())
    root['LACRequiredController'] = 'LACPreferences'
    root['LACReloadNotification'] = 'com.ning.liquidclock/Reload'
    for item in root.get('items', []):
        if item.get('key'):
            item['defaults'] = 'com.ning.liquidclock'
    (bundle / 'Info.plist').write_bytes(plistlib.dumps({
        'CFBundleDevelopmentRegion': 'English',
        'CFBundleExecutable': 'LiquidClockPrefs',
        'CFBundleIdentifier': 'com.ning.liquidclock.prefs',
        'CFBundleInfoDictionaryVersion': '6.0',
        'CFBundlePackageType': 'BNDL',
        'CFBundleShortVersionString': '0.1.0',
        'CFBundleVersion': '1',
        'MinimumOSVersion': '16.0',
        'NSPrincipalClass': 'LACPreferences',
    }, fmt=plistlib.FMT_XML, sort_keys=False))
    (bundle / 'Root.plist').write_bytes(plistlib.dumps(root, fmt=plistlib.FMT_XML, sort_keys=False))
    run(['codesign', '--force', '--sign', '-', '--timestamp=none', bundle])
    run(['codesign', '--verify', '--strict', bundle])

    air = out / 'ClockOnly.air'
    metallib = out / 'ClockOnly.metallib'
    run(['xcrun', '--sdk', 'iphoneos', 'metal', '-std=ios-metal2.3',
         '-mios-version-min=16.0', '-c', ROOT / 'renderer' / 'ClockOnly.metal', '-o', air])
    run(['xcrun', '--sdk', 'iphoneos', 'metallib', air, '-o', metallib])

    binaries = [host, backboard, prefs, metallib]
    receipt = {
        'arch': args.arch,
        'files': {
            str(path.relative_to(out)): {
                'size': path.stat().st_size,
                'sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
            } for path in binaries
        },
    }
    (out / 'native-build.json').write_text(json.dumps(receipt, indent=2) + '\n')
    print('PASS: native components signed; package assembly follows')


if __name__ == '__main__':
    main()
