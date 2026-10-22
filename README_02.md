README.md
==========
22-Oct-2026

I believe I have resolved on Windows Emulicious
setx JAVA_TOOL_OPTIONS "-Dsun.java2d.d3d=false"

Confirm
Powershell
echo $env:JAVA_TOOL_OPTIONS



20-Oct-2026

I could not set breakpoints so could not debug step thru main.asm

SOLUTION

File | Preferences | Settings
debug: allow
Check top checkbox 
Debug: Allow Breakpoints Everywhere
Allow setting breakpoints in any file


NB:
change Stop on Entry false
Set breakpoint
F5 to debug
Ctrl+F5 to Run