# TraySense

[![Downloads](https://img.shields.io/github/downloads/DMTWEAKS/traysense/total?label=downloads)](https://github.com/DMTWEAKS/traysense/releases) [![Latest release](https://img.shields.io/github/v/release/DMTWEAKS/traysense)](https://github.com/DMTWEAKS/traysense/releases/latest)

Small system monitor that sits on the Windows taskbar next to the tray. Shows CPU, RAM, GPU, VRAM and temps.

```
[cpu] 12% 54°   [ram] 61%   [gpu] 4% 44° VRAM 6%   [ssd] 38°
```

It's one C file using plain Win32, so the exe is around 100 KB and it uses a 1-3 MB of RAM at max. It only redraws when a number changes and it stops polling when the screen is off.

Works on Windows 10 and 11.

PawnIO gets installed automatically when you turn on CPU temp (needed to read the CPU sensor). Since the driver needs admin, TraySense then copies itself to Program Files and starts from there as admin on login.

Temps are white when normal, orange when elevated and red when extremely high. For CPU and GPU that's 80°C and 90°C, for the SSD 65°C and 75°C.

## Usage

Download the exe from [releases](https://github.com/DMTWEAKS/traysense/releases) and run it. Only get it from there, see SECURITY.md for how to check it's the real one. Right click for settings, left click opens Task Manager.

## Uninstall

Untick "Start with Windows" (this also removes the copy in Program Files), exit, delete the exe. If you don't need PawnIO anymore, remove it from Settings > Apps.

## Building

`./build.sh` with MinGW-w64, or `build.bat` on Windows (`build.bat msvc` for Visual Studio).

## License

MIT. The PawnIO modules in `pawnio/` are LGPL-2.1, see THIRD_PARTY.md.
