# Clock-only startup: actionable proposal

## Verdict

**Feasible as a fresh, independent SpringBoard-only UI hook module; not proven safe by selecting the sample's 35-hook manifest or by suppressing other sample constructors.** Keep the first MVP to lock-screen clock/date view hooks. Do not load either original dylib. A UI-only MVP will not establish parity with the sample's glass/field rendering.

## Confirmed from the supplied arm64e sample (unslid VAs)

- `liquidass.dylib` has 30 `__init_offsets`; `0x75b90` is one constructor, not a standalone clock entry. Saved disassembly `main-ctor-0x75b90.asm` shows **64** `MSHookMessageEx` calls. `evidence/clock-hook-manifest.json` is only a **35-hook candidate subset**, and mixes time/date display with complication, editing, poster, and notification-list behavior.
- The constructor also installs non-clock/dynamic behavior: at `0x763c8` calls helper `0x788c4` (Soko/Dock integration, including `dlopen`/`dlsym`/function hooks); `0x763dc` registers an add-image callback; `0x769d0`/`0x76a0c` install Dock/depth hooks; `0x76d3c`/`0x76d54` install astronomy/poster hooks; `0x76d60` starts Dock geometry observation. Thus the original constructor cannot be used as the clock-only installer.
- A narrow *candidate hook surface* is in that 35-entry manifest: `CSProminentSubtitleDateView -layoutSubviews` (`0x76114`), `CSProminentTimeView -layoutSubviews/-setAlpha:/-setHidden:/-didMoveToWindow/-setDate:` (`0x76144`–`0x761f4`), `SBFLockScreenDateView -didMoveToWindow/-layoutSubviews/-setDate:` (`0x76224`–`0x7626c`), and `SBFLockScreenDateSubtitleDateView -layoutSubviews` (`0x76298`). Start with these 10 display hooks only; omit the manifest's editor, poster, complication, and notification-list entries. These are candidates, not a proven minimal/requisite set.
- `LiquidAssBackboardd.dylib` has three initializers: `0x7554`, `0x276bc`, `0x27704`. `tweakInit` at `0x7554` does more than clock work: registers a reset notification, calls `lgClearAccessibilityFiles` (`0x7be0`), checks safe mode/reads preferences, resolves private QuartzCore symbols/offsets, allocates render state, then calls `registerCustomFilter` (`0x83bc`). The latter uses generic host/radius/dynamic route state as well as clock-field state. `0x276bc` also initializes a mixed C++ global array including `g_clockFields`, `g_radiusRoutes`, `g_clockPosterRoutes`, `g_refreshRoutes`, `g_dynamicRoutes`, and other routing/logging state. **Do not use this backboard initializer for a clock-only MVP.**
- Existing sample identity/evidence is already recorded in `STARTUP-EVIDENCE.md` and `clock-init-classification.json`; this is source-sample evidence only, not upstream confirmation.

## Minimum safe implementation route

1. Create a **new, small UIKit/SpringBoard-only module** with its own explicit installer; do not link/load the sample dylibs, preserve their initializer sections, or call `0x75b90`/`0x7554`. Target SpringBoard at the injection/filter layer and gate again in the installer; keep PosterBoard a separate opt-in follow-up.
2. Implement just the display-view hook set above (or reduce it further after per-hook review). Use original-IMP chaining and local clock-only layout/appearance logic; do not call sample replacement/helper addresses. Resolve target classes/methods defensively and make installation idempotent. Avoid dyld add-image callbacks, generic observers, Dock/editor/poster setup, and non-clock global constructors in the first slice.
3. Do **not** include Backboardd or the field/custom-filter pipeline in this MVP. If full sample-like glass rendering is a requirement, split/reimplement only the required clock-field consumer/producer behind an explicit separate design; the saved evidence does not prove `tweakInit`/`registerCustomFilter` can be pruned safely.
4. Before calling the module isolated, statically audit its own init functions, Objective-C `+load`/categories, static constructors, dependencies, and every selected replacement's transitive calls. Then separately verify supported OS selector availability and runtime behavior; these have not been tested here.

## Unknown / not claimed

The sample's clock replacement helpers may share state or perform non-display work; the 35-hook manifest is not a dependency closure. It is unknown which of the 10 view hooks are necessary, whether their private selectors match the intended OS, and whether a UI-only implementation yields the desired visual result. No new module was built or run; no iOS/runtime safety or behavior is proven.
