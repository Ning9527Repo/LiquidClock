"""Read only the uploaded arm64e sample; write evidence under prefs/ only."""
from pathlib import Path
import hashlib, json, struct, sys
HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parent / 'tools'))
from evidence import Evidence
CANDIDATES = [Path('/tmp/liquidass-extract/var/jb/Library/PreferenceBundles/LiquidAssPrefs.bundle/LiquidAssPrefs'), Path('/var/minis/workspace/liquidass-clock/extract/var/jb/Library/PreferenceBundles/LiquidAssPrefs.bundle/LiquidAssPrefs')]
p = next(p for p in CANDIDATES if p.is_file())
i = Evidence(p, arch='arm64e')
if i.whole_sha != 'be1f127297d2a0b8c1cdf0378425ecf7260ef2eccafec177b70051c58d241d3f':
    raise ValueError('unexpected uploaded preferences sample SHA-256')
if i.subtype & 0xffffff != 2:
    raise ValueError('expected arm64e slice')
out = HERE / 'evidence'
print('range dictionary initializer:', hex(i.ptr(0x79788)))
for a in (0x274d0, 0x1d274, 0x1f53c, 0x231f8, 0x1cc78, 0x1ceb8, 0x58590, 0x43a38, 0x45068, 0x4658c, i.ptr(0x79788)):
    start, end = i.bounds(a)
    (out / ('prefs-' + hex(a) + '.asm')).write_text(f'; prefs arm64e unslid VA [{start:#x},{end:#x}); slice_offset={i.base:#x}\n' + i.disasm(start, end))
rows = []
for k in range(32):
    a = 0x78e88 + 0x48 * k
    name = i.cstr(i.ptr(a))
    if name != 'Clock':
        continue
    rows.append({'address': hex(a), 'name': name, 'hex': i.read(a, 0x48).hex(), 'floats_at_08_through_24': list(struct.unpack('<8f', i.read(a + 8, 32))), 'light_tint': i.cstr(i.ptr(a + 0x28)), 'dark_tint': i.cstr(i.ptr(a + 0x30))})
constants = []
for section, stride in [('__objc_intobj',24), ('__objc_doubleobj',16)]:
    s = i.sections['__DATA_CONST', section]
    for a in range(s['addr'], s['addr'] + s['size'], stride):
        data = i.read(a, stride)
        constants.append({'address': hex(a), 'section': section, 'isa': i.ptr(a), 'hex': data.hex(), 'type_encoding': i.cstr(i.ptr(a+8)) if stride == 24 else 'double', 'value': struct.unpack('<q' if stride == 24 else '<d', data[-8:])[0]})
raw = {hex(a): {'hex':i.read(a,8).hex(),'f32':struct.unpack('<f',i.read(a,4))[0], 'f64':struct.unpack('<d',i.read(a,8))[0]} for a in (0x68d90,0x68e68,0x68e70,0x68e90)}
domain = {'slot':hex(0x79e78), 'target':hex(i.ptr(0x79e78)), 'value':i.label(i.ptr(0x79e78))}
number_by_address = {int(n['address'], 16): n for n in constants}
def array(a):
    count, data = i.u64(a+8), i.ptr(a+16)
    assert count < 50
    items = []
    for k in range(count):
        target = i.ptr(data + k*8)
        items.append({'slot':hex(data+k*8), 'target':hex(target), 'value':number_by_address[target]['value']})
    return {'address':hex(a), 'count':count, 'items':items}
dict_a = 0x81648
count, keys, values = i.u64(dict_a+16), i.ptr(dict_a+24), i.ptr(dict_a+32)
assert count == 7
ranges = []
for k in range(count):
    key, value = i.ptr(keys+k*8), i.ptr(values+k*8)
    ranges.append({'key_address':hex(key), 'key':i.cfstrings[key], 'array':array(value)})
import plistlib
loc_path = p.parent / 'Localizable.strings'
loc = plistlib.loads(loc_path.read_bytes())
loc_keys = ['prefs.control.enabled','prefs.subtitle.enabled','prefs.control.clock_fps_limit','prefs.subtitle.clock_fps_limit','prefs.section.lockscreen_clock.title','prefs.section.lockscreen_date_label.title','prefs.section.lockscreen_date_label.subtitle']
for suffix in ('force_custom_scale','bezel_width','glass_thickness','refraction','refractive_index','chromatic_dispersion','blur','light_tint_color','dark_tint_color','date_format','date_format_enabled'):
    loc_keys += ['prefs.control.'+suffix, 'prefs.subtitle.'+suffix]
(out/'clock-localizations.json').write_text(json.dumps({'source':'uploaded bundle/Localizable.strings', 'sha256':hashlib.sha256(loc_path.read_bytes()).hexdigest(), 'strings':{k:loc.get(k) for k in loc_keys}}, indent=2)+'\n')
r = {'range_dictionary':{'address':hex(dict_a),'entries':ranges},'dispersion_clock_range':[number_by_address[0x81c30], number_by_address[0x81c80]],'architecture':'arm64e','address_space':'unslid virtual address','whole_sha256':i.whole_sha,'slice_sha256':hashlib.sha256(i.data).hexdigest(),'slice_offset':i.base,'descriptor':rows,'numbers':constants,'raw_constants':raw,'domain':domain}
(out/'prefs-constants.json').write_text(json.dumps(r, indent=2, allow_nan=False)+'\n')
print(json.dumps({'descriptor':rows,'raw_constants':raw,'domain':domain},indent=2))
