# TraySense

[![Downloads](https://img.shields.io/github/downloads/DMTWEAKS/traysense/total?label=downloads)](https://github.com/DMTWEAKS/traysense/releases) [![Latest release](https://img.shields.io/github/v/release/DMTWEAKS/traysense)](https://github.com/DMTWEAKS/traysense/releases/latest) [![Follow on X](https://img.shields.io/badge/follow-%40DMQ8__2-black?logo=x)](https://x.com/DMQ8_2)

Small system monitor that sits on the Windows taskbar next to the tray. Shows CPU, RAM, GPU, VRAM and temps.

```
[cpu] 12% 54°   [ram] 61%   [gpu] 4% 44° VRAM 6%   [ssd] 38°
```

It's one C file using plain Win32, so the exe is around 100 KB and it uses a 1-3 MB of RAM at max. It only redraws when a number changes and it stops polling when the screen is off.

Works on Windows 10 and 11.

Made by [@DMQ8_2](https://x.com/DMQ8_2), follow for updates and new features.

PawnIO gets installed automatically when you turn on CPU temp (needed to read the CPU sensor). Since the driver needs admin, TraySense then copies itself to Program Files and starts from there as admin on login.

Temps are white when normal, orange when elevated and red when extremely high. For CPU and GPU that's 80°C and 90°C, for the SSD 65°C and 75°C.

## Extras

All off by default, turn them on from the right click menu:

- CPU and GPU power draw (GPU shows watts on NVIDIA and AMD, TDP % on others)
- GPU core clock and VRAM clock
- Storage utilization (how busy your Windows drive is)
- VRAM usage

Other stuff:

- Hover over any group to see a graph of the last few minutes
- Position: next to the tray, after your apps or on the left side, one or two rows
- Works on every monitor (right click > Show on) and on vertical taskbars
- One click internet speed test (right click > Run speed test), the result shows right on the taskbar
- Tells you when there's a new version, you download it yourself

## Usage

Download the exe from [releases](https://github.com/DMTWEAKS/traysense/releases) and run it. Only get it from there, see SECURITY.md for how to check it's the real one. Right click for settings, left click opens Task Manager. If you turn off "Big labels on taskbar" and can't find the tray icons (Windows often hides new ones behind the ^ arrow), open TraySense again and the labels come back.

## Uninstall

Untick "Start with Windows" (this also removes the copy in Program Files), exit, delete the exe. If you don't need PawnIO anymore, remove it from Settings > Apps.

## Building

`./build.sh` with MinGW-w64, or `build.bat` on Windows (`build.bat msvc` for Visual Studio).

## License

Copyright (C) 2026 DMTWEAKS

TraySense is licensed under the GNU AGPL-3.0, see LICENSE. You can use it, study it and modify it, but if you share a modified version (including running it as a service), you have to release your full source code under the same license and keep the copyright notice.

Want to use TraySense code in a closed source or commercial app? That needs my written permission and a separate license, contact me first.

The TraySense name and logo aren't covered by the license. If you fork it, give your fork a different name.

Contributions are accepted under the same license. By sending a contribution you also allow DMTWEAKS to license it under other terms, so the project can keep offering separate licenses.

The PawnIO modules in `pawnio/` are LGPL-2.1, see THIRD_PARTY.md.
