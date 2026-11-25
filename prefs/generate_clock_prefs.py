"""Generate native clock-only preference specifiers; no build/install/network actions.
The default Root.plist requires ClockOnlyPrefsController.m to resolve runtime FPS.
Optional --maximum-fps and --os-major concretize a known target, never guess one.
"""
from pathlib import Path
import argparse, json, math, plistlib

HERE = Path(__file__).resolve().parent
DYNAMIC_FPS = 'UIScreen.mainScreen.maximumFramesPerSecond'

def validate(schema):
    if schema['sample']['architecture'] != 'arm64e':
        raise ValueError('only the uploaded arm64e evidence is supported')
    keys=set()
    for item in schema['settings']:
        key=item['key']
        if not (key.startswith('Clock.') or key.startswith('Lockscreen.Clock.DateFormat.')):
            raise ValueError('non-clock persisted key: '+key)
        if key in keys or 'Specular' in key:
            raise ValueError('duplicate or excluded persisted key: '+key)
        keys.add(key)
        kind=item['type']; default=item['default']
        if kind not in ('boolean','integer','number','string'):
            raise ValueError('unknown type: '+key)
        if default is None:
            if item['default_expression'] != DYNAMIC_FPS or key!='Clock.FPS':
                raise ValueError('unresolved default: '+key)
        elif kind=='boolean' and type(default) is not bool:
            raise ValueError('boolean default type: '+key)
        elif kind=='integer' and type(default) is not int:
            raise ValueError('integer default type: '+key)
        elif kind=='number' and (type(default) not in (int,float) or not math.isfinite(default)):
            raise ValueError('numeric default type: '+key)
        elif kind=='string' and not isinstance(default,str):
            raise ValueError('string default type: '+key)
        if item['options'] is not None:
            raise ValueError('unexpected visible options: '+key)
    return keys

def make_root(schema, maximum_fps=None, os_major=None):
    validate(schema)
    if maximum_fps is not None and (type(maximum_fps) is not int or maximum_fps<1):
        raise ValueError('maximum_fps must be a positive, observed integer')
    if os_major is not None and (type(os_major) is not int or os_major<1):
        raise ValueError('os_major must be a positive integer')
    cells=[]; current=None
    domain=schema['preference_domain']['value']
    for item in schema['settings']:
        availability=item['availability']
        if availability and os_major is not None:
            if availability['os_major_max'] is not None and os_major>availability['os_major_max']:
                continue
        if item['panel']!=current:
            current=item['panel']
            group={'cell':'PSGroupCell','label':schema['sections'][current]}
            if current=='date': group['footerText']=schema['sections']['date_subtitle']
            cells.append(group)
        control=item['control']; key=item['key']
        cell={'cell':{'switch':'PSSwitchCell','slider':'PSSliderCell','text':'PSEditTextCell','color':'PSEditTextCell'}[control],
              'label':item['title'], 'key':key,'defaults':domain,
              'get':'readPreferenceValue:', 'set':'setPreferenceValue:specifier:',
              'LACValueType':item['type'],'LACSampleControl':control,
              'LACSubtitle':item['subtitle']}
        if item['default'] is not None: cell['default']=item['default']
        if item['placeholder'] is not None: cell['placeholder']=item['placeholder']
        if item['decimals'] is not None: cell['LACDecimals']=item['decimals']
        if item['range'] is not None:
            r=item['range']
            for name in ('min','max'):
                if r[name] is not None: cell[name]=r[name]
            cell['showValue']=True
        if key=='Clock.FPS':
            if maximum_fps is None:
                cell['LACDynamicMaximumFPS']=True
            else:
                cell.update({'default':float(maximum_fps),'max':float(maximum_fps)})
        if availability and availability['os_major_max'] is not None:
            cell['LACMaximumOSMajor']=availability['os_major_max']
        gates=[]
        if current=='clock' and key not in ('Clock.FPS','Clock.Enabled'):
            gates.append({'key':'Clock.Enabled','default':True})
        if item['enabled_when'] is not None: gates.append(item['enabled_when'])
        if gates: cell['LACGates']=gates
        cells.append(cell)
    return {'title':schema['entry']['title'], 'LACRequiredController':'ClockOnlyPrefsController',
            'LACSchemaVersion':schema['schema_version'],
            'LACReloadNotification':schema['reload_notification']['value'],
            'LACUnresolvedRuntimeFPS':maximum_fps is None,
            'items':cells}

def write_root(path, maximum_fps=None, os_major=None):
    path=Path(path).resolve()
    if HERE not in path.parents:
        raise ValueError('output must remain below prefs/')
    schema=json.loads((HERE/'prefs-schema.json').read_text())
    data=plistlib.dumps(make_root(schema,maximum_fps,os_major),fmt=plistlib.FMT_XML,sort_keys=False)
    path.write_bytes(data)
    return data

if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,default=HERE/'Root.plist')
    parser.add_argument('--maximum-fps',type=int,default=None)
    parser.add_argument('--os-major',type=int,default=None)
    args=parser.parse_args()
    data=write_root(args.output,args.maximum_fps,args.os_major)
    print(str(args.output)+': '+str(len(data))+' bytes; runtime FPS '+('unresolved (native controller required)' if args.maximum_fps is None else str(args.maximum_fps)))
