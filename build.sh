#!/bin/sh
set -e
CC=${CC:-x86_64-w64-mingw32-gcc}
WINDRES=${WINDRES:-x86_64-w64-mingw32-windres}
command -v "$CC" >/dev/null 2>&1 || { CC=gcc; WINDRES=windres; }
"$WINDRES" traysense.rc -O coff -o traysense.res
"$CC" -Os -s -mwindows -Wall -ffunction-sections -fdata-sections -Wl,--gc-sections \
      traysense.c traysense.res -o TraySense.exe
ls -l TraySense.exe
