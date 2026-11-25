# LiquidClock

Standalone clock-only reconstruction based on the supplied **LiquidAss 0.1.2t+r2** package, not a rename/repack of its multi-surface binaries.

**Work in progress. This repository is a source backup, NOT a claim of a usable or device-tested release.**

Scope: lock-screen glyph glass/refraction, font/size editor, per-poster save/cancel/restore and relevant depth masks; unrelated LiquidAss surfaces are excluded. The independent preference domain is `com.ning.liquidclock`; the original application's preferences/binaries are not modified.

## Verification layers

- Sample shader/font extraction and recovered wire/uniform ABI: see `evidence/`, `abi/`, `renderer/`.
- Portable geometry, protocol and transaction tests: `python3 tests/run_regression.py`.
- UIKit/CoreText/private CA code requires an iOS SDK; syntax checks do not validate runtime behavior.
- No release is complete until native build, package/signature checks and actual device rendering/editor/poster tests have all been recorded.

`STATUS.md` and historical `CONTINUATION-2026-11-25.md` are older analysis checkpoints. New integrated verification receipts take precedence. Raw sample binaries and the uploaded deb are not redistributed by this repository.

## Attribution

Reconstruction and integration: **Ning**. Supplied original LiquidAss package author: **dylv**. Extracted assets retain their original ownership. See `NOTICES-upstream.md` for independently consulted public reference material; it is not evidence that public upstream equals the supplied sample.
