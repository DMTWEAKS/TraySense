@echo off
if /I "%1"=="msvc" goto msvc
windres traysense.rc -O coff -o traysense.res || exit /b 1
gcc -Os -s -mwindows -Wall -ffunction-sections -Wl,--gc-sections traysense.c traysense.res -o TraySense.exe -lole32 -loleaut32 || exit /b 1
goto done
:msvc
rc /nologo traysense.rc || exit /b 1
cl /nologo /O1 /W3 traysense.c traysense.res /Fe:TraySense.exe /link /SUBSYSTEM:WINDOWS user32.lib gdi32.lib shell32.lib advapi32.lib ole32.lib oleaut32.lib || exit /b 1
:done
echo Built TraySense.exe
