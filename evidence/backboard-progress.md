# Backboard clock-only implementation progress

## Checkpoint (2026-11-26, resumed)

Scope locked to supplied `LiquidAssBackboardd.dylib` arm64e slice (`0x94000`, SHA-256 `ea891e4347dfcea64703753c9ac39705718ac330d73e6a944a7c8da3416c918e`). Sample not executed/loaded/modified. No upstream implementation is being reused.

### Confirmed from target
- Filter type string at sample VA `0x2acd6`, referenced by data symbol `__ZL21kCustomFilterTypeName` at `0x38268`: **`dylv.liquidglass.refraction`**.
- `registerCustomFilter` is at `0x83bc`. It first resolves `filter_table` and Gaussian context/vtable, then chooses render/edge-info slots, clones a `0xb0`-byte vtable, builds a `0x100`-byte context, and also sets up generic host/radius/dynamic routes; it is not a clock-only initializer.
- `CAInternAtomWithCString` is found as a QuartzCore export when available; sample fallback scans QuartzCore `__TEXT` for a fixed instruction prologue and validates candidate call wrappers. The QuartzCore image scan uses `dyld` image names/header/slide and `getsegmentdata`, then bounds checks `__TEXT` instructions.
- Resolver symbols: `LGResolve_CAInternAtomWithCString` VA `0x4e5c`, `LGResolve_AddFilter` `0x5150`, `LGResolve_FilterTableSlot` `0x569c`. The AddFilter resolver returns a dynamically matched call-site value from the checked Gaussian cluster; it does not justify a global hardcoded offset.
- Filter-type intern call uses `blraaz` on resolved `g_internAtom` (a zero-context signed callable). Callback entrypoints: `identityStub(void*,void*)`, `customEdgeInfo(void*,void*,void*,void*,void*,float[2]*,bool*)`, and render `CR13(void*,void*,void*,void*,float,void*,float,bool,void*,void*,void*,float*)`, confirmed by Mach-O symbols and C++ demangling. The callback bodies have PAC prologues/`retab`; callable and vtable pointer-authentication is nontrivial.
- Existing sample render path reads separate Metal texture indices 0 (backdrop) and 1 (clock field) and fragment uniform buffer index 0; uniform block is 192 bytes. Clock field wire format is the independently extracted 64-byte header plus float32 SDF; GPU field becomes R16Float after consumer conversion.

### Current implementation strategy / cautions
- I will implement a small standalone resolver/registration adapter only where ABI and behavior are statically evidenced, plus explicit clock-only route/atom configuration. It will not invoke sample code or transplant sample generic registration/initializer.
- If CA's private filter-table registration ABI or render callback data layout cannot be proven from the target, code must fail closed and document a concrete blocker rather than invent a slot, callback signature, or vtable layout. No manual guessed offsets.

### Evidence created
- `evidence/backboard-register.asm` (direct Capstone output for sample `0x83bc..0x9b60`).
- `evidence/backboard-resolver.asm` (direct Capstone output for `0x45f0..0x56c0`).

## Implementation checkpoint (2026-11-26, active)

Production code now exists in `src/backboard/`: `LACClockFilterContract.h`, `LACClockBackboard.h/.mm`, `LACClockData.h/.cpp`, `LACClockMetal.h/.mm`, `LACQCScanner.h/.cpp`. Clock names are reconstruction-only `com.ning.liquidclock`, `.editor`, `.poster0..15`; main owns its constructor and path/config wiring. No auto-initializer, original initializer, generic host aliases, widget/control routes, sample loading, install or remote build occurs.

- Real Metal implementation loads standalone ClockOnly.metallib, selects `ningClockVertex`/`ningClockFragment`, caches per-device/per-format pipelines, copies a stable field, converts float SDF to immutable R16Float texture, creates the exact 192B uniforms, binds textures0/1 and fragment buffer0, draws a fullscreen triangle and ends encoding. It never commits CA's buffer.
- Native registration uses a bounded QuartzCore image/ADRP cluster resolver and genuine Gaussian descriptor plus atom-guarded hooks. PAC vtables are never cloned. Source/texture member offsets are finite sample-derived ABI profiles, not arbitrary global addresses. Intended profiles: iOS16.x and actual target iOS17.2.1; all resolver/profile failures stay closed.
- The NEW reconstruction acknowledgement rule writes sequence CAS-max to +0x20 only in a successful Metal completed handler; token/time/sequence are checked. This is NOT claimed as the sample's unresolved cursor semantics, and is NOT proof of compositing.
- Registration infrastructure reference was consulted: upstream `LGSymbolResolver.mm` and Tweak.mm callback/registration declarations. Algorithms are independently bounded/reimplemented; exact instruction masks/descriptor/PAC behavior are being checked against retained sample disassembly. Shader/field are sample derivatives, not upstream substitutes. Detailed provenance and checks follow.
- Final local validation: `sh tests/test_backboard_build.sh` compiled the four backboard Objective-C++/C++ units plus field reader and codec into strict arm64e iOS 16 objects with `-Wall -Wextra -Werror` (exit 0). `python3 -B -m unittest discover -s tests -p 'test_backboard.py' -v` passed all six host/static tests, including the committed sample-byte fixture, clock-only routes, and completion-ACK ordering.
- These checks do not link a dylib or compile a Metal library; there is no Apple Metal compiler in this iSH environment. They do not verify CA private registration, GPU execution, SpringBoard rendering, or device runtime behavior. The implementation remains a source reconstruction.

Additional narrow evidence: `backboard-render.asm`, `backboard-callback-entry.asm`, `backboard-render-wrapper.asm`, `backboard-add-call.asm`, `backboard-resolver-detail.asm`, reproducible `backboard-narrow.py` (read-only sample).
