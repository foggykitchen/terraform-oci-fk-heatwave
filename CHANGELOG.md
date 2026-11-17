# Changelog

## v2.0.1 — 2026-11-17

- Align module and training documentation with the FoggyKitchen repository standard; add the shared support policy and retain all eight course lessons.
- Document module modes, networking behavior, current limitations and validation steps.
- Add input types and descriptions, sensitive metadata for secrets, and output descriptions without renaming inputs, outputs or resource addresses.
- Move provider requirements to versions.tf and declare the existing null provider dependency.
- Correct the root tfvars example, lesson 5 link and HeatWave repository URLs.
- Remove the tracked state backup from the source tree and ignore state, plans and local secret files. This does not remove the file from Git history.
- Require published dependency references in normal CI and extend plan-only mode coverage.

## v2.0.0 — 2026-11-12

- BREAKING: require OCI provider >= 9.12.1, < 10.0.0 and OpenTofu >= 1.11.0.
- Preserve previous local module/example work in separate commits.
- Update embedded examples and dependency pins; add plan-only mocked test coverage.
- Preserve the module input/output contract and resource addresses.


- Replace the retired template provider data source with native templatefile(); managed resource addresses and module inputs/outputs are unchanged.
