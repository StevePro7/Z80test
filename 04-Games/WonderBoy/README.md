README.md
20-Oct-2026

01.
I have opened Z80 workspace for Wonderboy by Sega Master System 1987 - when I run the game via Emulicious I can see the Tiles and Tilemaps etc.
I see that the background tiles are stored in index 0-255
i.e.
load once at the start of the level
However I see that the sprites - which are stored at tile index 256 and greater are loaded on the fly depending on TomTom animation and enemy sprites etc
Therefore can you explain where and how this is achieved - I believe they would be loaded during the vBlank [vertical blank] so as not to cause graphics tearing while rendering, correct?


ahp-session:/8da2b7c7-eba2-4f2e-bbce-70225500d931
agent-host-session://ahp-session/8da2b7c7-eba2-4f2e-bbce-70225500d931


[Wonderboy Sprite Loading Chat](agent-host-session://ahp-session/8da2b7c7-eba2-4f2e-bbce-70225500d931)