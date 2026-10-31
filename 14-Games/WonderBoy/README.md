26-Oct-2026
main_WIP.asm

The current build we can hardcode 
.define Start_Area $02
.define Start_Round $03
.define Start_Checkpoint $01

and build ROM
But we can dump ROM into Hex editor and modify bytes
0034	Start_Area
0035	Start_Round
0036	Start_Checkpoint

and will override


The only issue with the latest build is once you complete
the game will loop back to this i.e. not proceed


Also, when you get Angel - after finished you lose invincibility
Area  5
Round 1
04 00 00


Finally - I'm sure I got the ROM to always have the axe
but it doesn't seem to be although you can't die anyway