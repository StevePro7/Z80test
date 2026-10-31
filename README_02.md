README.md
==========

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



31-Oct-2026
VS Code on Linux

main.asm
I click on References link

VS Code actual command not found wanted to execute 
editor.action.showReferences

Preferences | Settings
search for
@command:editor.action.showReferences

Just added dummy keyboard shortcut
e.g.
Numlock

Close VS Code + Re-open
Now references works
for the most part
still saw an error "occasionally"