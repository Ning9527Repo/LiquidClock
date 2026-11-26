#!/usr/bin/env python3
from pathlib import Path
import argparse,gzip,hashlib,io,json,plistlib,tarfile
ROOT=Path(__file__).resolve().parents[1];PKG='com.ning.liquidclock';VER='0.1.1'
HOSTS=['com.apple.springboard','com.apple.PosterBoard','com.apple.NanoUniverse.AegirProxyApp.AegirPoster','com.apple.weather.poster','com.apple.WatchFacesWallpaperSupport.ExtragalacticPoster','com.apple.PhotosUIPrivate.PhotosPosterProvider','com.apple.EmojiPoster.EmojiPosterExtension','com.apple.WallpaperKit.CollectionsPoster','com.apple.PridePoster.PridePosterExtension','com.apple.UnityPoster.UnityPosterExtension','com.apple.GradientPoster.GradientPosterExtension']
SHARED=['preferences.plist','backboard-status.plist','main-field.bin','editor-field.bin','poster-fields.bin','posters.plist','posters.plist.lock']
def tgz(files):
 raw=io.BytesIO()
 with tarfile.open(fileobj=raw,mode='w',format=tarfile.USTAR_FORMAT) as t:
  dirs=set()
  for n in files:
   p=Path(n).parent
   while str(p) not in ('','.'):dirs.add(str(p));p=p.parent
  for n in sorted(dirs,key=lambda x:(x.count('/'),x)):
   i=tarfile.TarInfo('./'+n+'/');i.type=tarfile.DIRTYPE;i.mode=0o755;i.uid=i.gid=0;i.uname=i.gname='root';i.mtime=0;t.addfile(i)
  for n,(d,m) in sorted(files.items()):
   i=tarfile.TarInfo('./'+n);i.size=len(d);i.mode=m;i.uid=i.gid=0;i.uname=i.gname='root';i.mtime=0;t.addfile(i,io.BytesIO(d))
 out=io.BytesIO()
 with gzip.GzipFile(fileobj=out,mode='wb',filename='',mtime=0,compresslevel=9) as z:z.write(raw.getvalue())
 return out.getvalue()
def ar(out,n,d):
 h=f'{n+"/":<16}{0:<12}{0:<6}{0:<6}{0o100644:<8o}{len(d):<10}`\n'.encode();assert len(h)==60;out.write(h);out.write(d)
 if len(d)&1:out.write(b'\n')
def build(a):
 src=Path(a.input);r=json.loads((src/'native-build.json').read_text());assert r['arch']==a.arch
 names=['LiquidClock.dylib','LiquidClockBackboard.dylib','LiquidClockPrefs.bundle/LiquidClockPrefs','ClockOnly.metallib'];b={}
 for n in names:
  p=src/n;assert r['files'][n]['sha256']==hashlib.sha256(p.read_bytes()).hexdigest();b[n]=p.read_bytes()
 rootless=a.arch=='arm64';prefix='var/jb/' if rootless else '';lib=prefix+'Library/MobileSubstrate/DynamicLibraries/';pref=prefix+'Library/PreferenceBundles/LiquidClockPrefs.bundle/'
 files={lib+'LiquidClock.dylib':(b[names[0]],0o755),lib+'LiquidClockBackboard.dylib':(b[names[1]],0o755)}
 files[lib+'LiquidClock.plist']=(plistlib.dumps({'Filter':{'Bundles':HOSTS}},fmt=plistlib.FMT_BINARY),0o644);files[lib+'LiquidClockBackboard.plist']=(plistlib.dumps({'Filter':{'Bundles':['com.apple.backboardd']}},fmt=plistlib.FMT_BINARY),0o644)
 res=lib+'LiquidClockResources.bundle/';files[res+'ClockOnly.metallib']=(b[names[3]],0o644)
 for f in ('SF-Compact-Display-Regular.otf','SFAdaptiveSoftNumeric-VF.otf'):files[res+'Fonts/'+f]=((ROOT/'assets/fonts'/f).read_bytes(),0o644)
 info={'CFBundleDevelopmentRegion':'English','CFBundleExecutable':'LiquidClockPrefs','CFBundleIdentifier':'com.ning.liquidclock.prefs','CFBundleInfoDictionaryVersion':'6.0','CFBundlePackageType':'BNDL','CFBundleShortVersionString':VER,'CFBundleVersion':'2','MinimumOSVersion':'16.0','NSPrincipalClass':'LACPreferences'}
 root=plistlib.loads((ROOT/'prefs/Root.plist').read_bytes());root['LACRequiredController']='LACPreferences';root['LACReloadNotification']='com.ning.liquidclock/Reload'
 for x in root.get('items',[]):
  if x.get('key'):x['defaults']=PKG
 files[pref+'Info.plist']=(plistlib.dumps(info,fmt=plistlib.FMT_XML,sort_keys=False),0o644);files[pref+'Root.plist']=(plistlib.dumps(root,fmt=plistlib.FMT_XML,sort_keys=False),0o644);files[pref+'LiquidClockPrefs']=(b[names[2]],0o755)
 sig=src/'LiquidClockPrefs.bundle/_CodeSignature/CodeResources'
 if sig.exists():files[pref+'_CodeSignature/CodeResources']=(sig.read_bytes(),0o644)
 ep=prefix+'Library/PreferenceLoader/Preferences/LiquidClockPrefs.plist';files[ep]=(plistlib.dumps({'entry':{'bundle':'LiquidClockPrefs','cell':'PSLinkCell','detail':'LACPreferences','isController':True,'label':'LiquidClock'}},fmt=plistlib.FMT_XML,sort_keys=False),0o644)
 sandy=prefix+'Library/libSandy/com.ning.liquidclock.plist';base='/var/mobile/Library/Accessibility/';ifroot='/rootfs' if not rootless else '';files[sandy]=(plistlib.dumps({'AllowedProcesses':sorted(set(HOSTS+['com.apple.backboardd','com.apple.Preferences'])),'Extensions':[{'extension_class':'com.apple.app-sandbox.read-write','path':ifroot+base+'com.ning.liquidclock-'+x,'type':'file'} for x in SHARED]},fmt=plistlib.FMT_BINARY),0o644)
 control=(f'Package: {PKG}\nName: LiquidClock\nVersion: {VER}\nArchitecture: {"iphoneos-arm64" if rootless else "iphoneos-arm64e"}\nDepends: mobilesubstrate, preferenceloader, com.opa334.libsandy, firmware (>= 16.0)\nSection: Tweaks\nAuthor: Ning\nMaintainer: Ning\nDescription: Standalone lock-screen clock glass and editor.\n').encode()
 post=b'''#!/bin/sh
set -e
dir=/var/mobile/Library/Accessibility
mkdir -p "$dir"
chown mobile:mobile "$dir"
chmod 0755 "$dir"
if [ ! -e "$dir/com.ning.liquidclock-posters.plist" ]; then
  printf '%s\\n' '<?xml version="1.0" encoding="UTF-8"?><plist version="1.0"><dict><key>version</key><integer>1</integer><key>posters</key><dict/></dict></plist>' > "$dir/com.ning.liquidclock-posters.plist"
fi
for f in preferences.plist backboard-status.plist main-field.bin editor-field.bin poster-fields.bin posters.plist.lock; do
  touch "$dir/com.ning.liquidclock-$f"
done
chown mobile:mobile "$dir"/com.ning.liquidclock-* 2>/dev/null || true
chmod 0600 "$dir"/com.ning.liquidclock-*.bin 2>/dev/null || true
exit 0
'''
 data=tgz(files);ctl=tgz({'control':(control,0o644),'postinst':(post,0o755)});out=io.BytesIO();out.write(b'!<arch>\n');ar(out,'debian-binary',b'2.0\n');ar(out,'control.tar.gz',ctl);ar(out,'data.tar.gz',data);p=Path(a.output);p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(out.getvalue());print(json.dumps({'path':str(p),'arch':a.arch,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'bytes':p.stat().st_size},indent=2))
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--arch',choices=['arm64','arm64e'],required=True);p.add_argument('--input',required=True);p.add_argument('--output',required=True);build(p.parse_args())
