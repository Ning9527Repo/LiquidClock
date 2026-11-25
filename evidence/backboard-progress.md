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

No source modules/tests written yet; next action is decode clock host parameters and callback parameter use, then implement/test the bounded pieces.
