"""Materialize only statically evidenced clock preference definitions (stdlib only)."""
from pathlib import Path
import json

HERE = Path(__file__).resolve().parent

def build():
    constants = json.loads((HERE/'evidence/prefs-constants.json').read_text())
    localizations = json.loads((HERE/'evidence/clock-localizations.json').read_text())
    strings = localizations['strings']
    descriptor = constants['descriptor'][0]
    assert descriptor['address'] == '0x79308'
    f = descriptor['floats_at_08_through_24']
    ranges = {x['key'][2:-1]: x['array'] for x in constants['range_dictionary']['entries']}
    settings = []

    def add(key, kind, control, default, suffix, addresses, *, bounds=None,
            decimals=None, encoding=None, panel='clock', enabled=None, availability=None,
            default_expression=None, placeholder=None):
        r = None if bounds is None else {'min':bounds[0], 'max':bounds[1], 'min_expression':None, 'max_expression':None}
        item = {'key':key, 'type':kind, 'control':control, 'default':default,
                'default_expression':default_expression, 'default_encoding':encoding,
                'range':r, 'options':None, 'decimals':decimals, 'step':None,
                'placeholder':placeholder, 'panel':panel,
                'title':strings['prefs.control.'+suffix],
                'subtitle':strings['prefs.subtitle.'+suffix],
                'title_localization_key':'prefs.control.'+suffix,
                'subtitle_localization_key':'prefs.subtitle.'+suffix,
                'enabled_when':enabled, 'availability':availability,
                'evidence':{'image':'LiquidAssPrefs', 'architecture':'arm64e',
                            'addresses':addresses, 'range_object':None}}
        assert item['title'] is not None and item['subtitle'] is not None
        settings.append(item)
        return item

    add('Clock.FPS','number','slider',None,'clock_fps_limit',
        ['0x1fff8','0x20008','0x2000c','0x20150','0x20160','0x2016c','0x20170','0x20174','0x20190'],
        bounds=(1.0,None),decimals=0,encoding='NSNumber numberWithDouble:',
        default_expression='UIScreen.mainScreen.maximumFramesPerSecond')['range']['max_expression'] = 'UIScreen.mainScreen.maximumFramesPerSecond'
    add('Clock.Enabled','boolean','switch',True,'enabled',
        ['0x1d70c','0x1d7b8','0x1d7cc','0x1d7d4','0x1d2d4','0x1cbd8'],encoding='NSNumber numberWithBool:')
    add('Clock.CustomScaleEnabled','boolean','switch',True,'force_custom_scale',
        ['0x1d778','0x1d848','0x1d854','0x1d948','0x1d94c'],encoding='NSNumber numberWithBool:')
    add('Clock.CustomScale','number','slider',1.0,'force_custom_scale',
        ['0x1d78c','0x1d798','0x1d814','0x1d920','0x1d924','0x1d974','0x1d9b0','0x1d9e0'],
        bounds=(0.1,1.5),decimals=2,encoding='NSNumber numberWithDouble:',enabled={'key':'Clock.CustomScaleEnabled','default':True})
    for key,suffix,index,call,decimals in [
        ('BezelWidth','bezel_width',1,'0x1daf4',1),
        ('GlassThickness','glass_thickness',2,'0x1dbe8',1),
        ('RefractionScale','refraction',3,'0x1dd10',2),
        ('RefractiveIndex','refractive_index',4,'0x1de38',2)]:
        arr=ranges[key]
        item=add('Clock.'+key,'number','slider',f[index],suffix,
                 ['0x79308',call,'0x1d058','0x274d0','0x277bc'],
                 bounds=tuple(x['value'] for x in arr['items']),decimals=decimals,
                 encoding='descriptor IEEE754 float32 -> double -> NSNumber numberWithDouble:')
        item['evidence']['range_object']=arr
        item['evidence']['descriptor_value_address']=hex(0x79308+8+index*4)
    add('Clock.DispersionEnabled','integer','switch',0,'chromatic_dispersion',
        ['0x1d4c0','0x1dee4','0x1dfb0','0x1dfe0','0x1dfe4','0x1dfe8','0x1dfec','0x68e90'],
        encoding='NSNumber numberWithInt: (comparison result, NOT kCFBoolean)')
    dispersion=add('Clock.DispersionStrength','number','slider',f[7],'chromatic_dispersion',
        ['0x1d4b0','0x1deb4','0x1dfb0','0x1dfb8','0x1e05c','0x27530','0x27574','0x27590','0x27598','0x275a0'],
        bounds=(1.0,2.0),decimals=1,encoding='NSNumber numberWithFloat:',
        enabled={'key':'Clock.DispersionEnabled','default':0})
    dispersion['evidence']['range_numbers']=constants['dispersion_clock_range']
    dispersion['evidence']['descriptor_value_address']='0x7932c'
    blur=add('Clock.Blur','number','slider',f[5],'blur',
        ['0x1e470','0x1e48c','0x1e4cc','0x1e500','0x1e540','0x1e544'],
        bounds=(0.0,50.0),decimals=1,encoding='descriptor IEEE754 float32 -> double -> NSNumber numberWithDouble:')
    blur['evidence']['range_object']=ranges['Blur']
    blur['evidence']['descriptor_value_address']='0x79324'
    for key,suffix,field,address in [('LightTintColor','light_tint_color','light_tint','0x1e874'),('DarkTintColor','dark_tint_color','dark_tint','0x1e95c')]:
        add('Clock.'+key,'string','color',descriptor[field],suffix,
            ['0x1d478','0x1d490','0x1e72c','0x1e76c','0x1e770','0x1e7a8',address],
            encoding='NSString from descriptor UTF8 string',availability={'os_major_min':None,'os_major_max':15})
    add('Lockscreen.Clock.DateFormat.Enabled','boolean','switch',True,'date_format_enabled',
        ['0x201e4','0x201f0','0x201f4','0x20228','0x20238'],
        encoding='NSNumber numberWithBool:',panel='date')
    add('Lockscreen.Clock.DateFormat.Format','string','text','', 'date_format',
        ['0x202bc','0x202c4','0x20324','0x20328','0x2032c','0x20334','0x20340','0x20370','0x20378','0x2037c','0x23248','0x23260'],
        encoding='NSString',panel='date',placeholder='EEE MMM d',
        enabled={'key':'Lockscreen.Clock.DateFormat.Enabled','default':True})
    for item in settings:
        if item['range'] is not None and item['evidence']['range_object'] is None and item['key']=='Clock.CustomScale':
            item['evidence']['range_object']=ranges['CustomScale']
    return {
        'schema_version':1, 'scope':'uploaded-sample clock-only settings, not a renderer implementation',
        'sample':{'label':'LiquidAss 0.1.2t+r2','label_source':'task-provided; bundle version differs',
                  'prefs_bundle_short_version':'1.0.0','architecture':'arm64e','address_space':'unslid VA, not arm64 or runtime address',
                  'sha256':constants['whole_sha256'],'slice_sha256':constants['slice_sha256'], 'slice_offset':constants['slice_offset']},
        'preference_domain':{'value':'dylv.liquidassprefs','evidence':['0x79e78','0x7fc30','0x1c5e8','0x1c5f4']},
        'reload_notification':{'value':'dylv.liquidassprefs/Reload','kind':'Darwin','evidence':['0x45078','0x45080','0x450b4'],
                               'evidence_role':'observer registration; new controller posts this known receiver name'},
        'entry':{'function':'_LGClockItems','address':'0x1ffbc','calls':['0x1d368','0x1f53c'], 'title':strings['prefs.section.lockscreen_clock.title']},
        'sections':{'clock':strings['prefs.section.lockscreen_clock.title'], 'date':strings['prefs.section.lockscreen_date_label.title'], 'date_subtitle':strings['prefs.section.lockscreen_date_label.subtitle']},
        'settings':settings,
        'excluded':[{'key':'Clock.SpecularMode','type':'string','control':'segmented',
                     'default':'glass','range':None,'options':['none','border','glass'],
                     'legacy_key':'Clock.SpecularEnabled','legacy_default':None,
                     'reason':'generic builder creates it, _LGClockItems explicitly filters exact key before insertion',
                     'evidence':['0x1e170','0x1e27c','0x1e29c','0x1e2ac','0x1e2b4','0x1e3b8','0x20084','0x200c8','0x200d8','0x200e4'],
                     'default_proof':'descriptor specular float 1.0 > double 0.001; Clock != CoverSheet'}],
        'numeric_truth':{'numbers_file':'evidence/prefs-constants.json',
                         'note':'Numeric object payloads decoded from bytes. ISA comments name classes, not values. Decimals is precision metadata, not proven slider quantization.',
                         'float32_defaults_exact':True, 'steps_proven':False},
        'unknowns':{'concrete_device_maximum_frames_per_second':None,'target_device_os_major':None,
                    'original_slider_quantization':None,'independent_renderer_end_to_end':None,
                    'uikit_device_validation':None,'private_preferences_framework_device_compatibility':None,
                    'empty_date_format_runtime_fallback':None},
        'native_page_adaptations':['Compound scale_override split into native switch and slider without adding persisted keys.',
                                   'Color strings use native editable text fields, not the sample custom color picker.',
                                   'Native controller resolves FPS on device and hides tint cells on OS major >15.',
                                   'Controller writes only selected clock keys immediately and posts known Reload receiver; sample staged Apply/cancel is not reproduced.',
                                   'Display decimals retained as metadata; no quantization or invented step.',
                                   'No global master/renderer/motion/non-clock switches are exposed or reset.'],
        'localizations':{'source':localizations['source'],'sha256':localizations['sha256']}}

if __name__ == '__main__':
    result=build()
    (HERE/'prefs-schema.json').write_text(json.dumps(result,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
    print('prefs-schema.json:',len(result['settings']),'persisted clock keys')
