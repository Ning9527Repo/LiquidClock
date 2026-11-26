# LiquidClock 0.1.1 source and build scope

This revision includes the a9f3c90 font-axis reconstruction and completes a separate CoreText glyph-path canvas for supported clock hosts. Native UILabel font, frame and attributed content remain intact; only glyph opacity changes after a matching current GPU-completion acknowledgement.

## Geometry

- Uses the native `_textLabel` when its ivar is an object/UILabel descendant, otherwise only an unambiguous single UILabel.
- Creates glyph outlines with CoreText run fonts/positions, not a larger native UILabel. Fits the ink path uniformly with `min(width / inkWidth, digitHeight / inkHeight, 1)`, horizontally centers and flips CoreText y-up once to align ink top with the canvas top. The canvas dimensions are identical in the field publisher and backdrop host.
- Sample `0x668d8..0x66a28`: top after the date anchor plus 8pt; bottom bounded by the width-scaled maximum clock height and viewport bottom minus 88pt. The standalone adapter only accepts an unambiguous visible date host and axis-aligned source ancestry. Poster/card host clipping is preserved. Unknown/ambiguous adapters use the previous native-size capture.
- Sample `0x7c378` helper: visible wide notification/adjunct views impose a 12pt bottom gap, with a 400-node traversal budget. This is read-only geometry; no notification hook or view change is introduced.
- Existing editor draft/commit/cancel state remains authoritative. CoreText font axes, seven-step width fit and CustomScale continue through the new path. CustomScale applies to the independent backdrop view.
- Non-outline glyphs, unsupported rich attributes and invalid/oversize paths fail without hiding native text. Separate cache generations and mode-change publication invalidation prevent stale ACK reuse.

## Initialization correction

Sample `0x5570..0x5624` returns after the first qualifying registration cluster; later unrelated clusters must not cause rejection. Slot validation still fails closed on an invalid first candidate.

Sample `0x877c..0x8864` installs the Gaussian hook path once, then tests the live filter table and retries after 250ms. Sample `0x88c4..0x88f4` interns names after readiness. This supersedes a9f3c90's no-hooks-before-wait policy. Both hooks must complete before any waiting state; partial-hook failures remain terminal. Atom routes publish as one immutable validated table. No duplicate hook-install block remains.

## Build and validation boundary

Version 0.1.1 (preference internal build 2), Author/Maintainer Ning. User authorized one dual-architecture GitHub Actions build; no automatic rerun after failure. Source must be committed to the user's main branch and remote blobs/modes verified before dispatch. This revision does not install, inject, restart processes or publish a package to a repository feed.

Production geometry and font fitting are tested as host C++; modified Objective-C++ is checked for arm64 and arm64e. Private CA callback execution, real CoreText font realization, exact poster/editor coordinate fidelity, actual glass appearance and long-running device stability still require device verification. No static test or native build result proves those effects.
