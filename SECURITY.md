# Security

If you find a security issue please don't open a public issue. Report it privately through the Security tab ("Report a vulnerability") and I'll get back to you.

## Downloads

Only download TraySense from the releases page of this repo: https://github.com/DMTWEAKS/traysense/releases

Every release is built by GitHub Actions straight from this repo. You can check that the exe you have is the real one:

- compare its SHA-256 with `TraySense.exe.sha256` on the release page, or
- with the GitHub CLI: `gh attestation verify TraySense.exe --repo DMTWEAKS/traysense`

If someone sends you TraySense from anywhere else, don't run it.

## What runs as admin

Only when you turn on CPU temp. TraySense then installs the PawnIO driver (official installer, SHA-256 pinned), copies itself to `Program Files\TraySense` and starts from there at login. It never updates itself or downloads anything else.
