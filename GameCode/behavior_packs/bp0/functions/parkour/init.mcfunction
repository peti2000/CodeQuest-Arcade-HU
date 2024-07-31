summon cleverlike:arcade6 92 103 18
execute as @e[type=cleverlike:arcade6,x=92,y=103,z=18,r=2] at @s run tp @s ~~1~ facing ~10~~
dialogue change @e[type=cleverlike:arcade6,x=92,y=103,z=18,r=2] parkour_game1

summon cleverlike:npc 92 103 16 e_npc5
execute as @e[type=cleverlike:npc,x=92,y=103,z=16,r=2] at @s run tp @s ~~1~ facing ~10~~
dialogue change @e[type=cleverlike:npc,x=92,y=103,z=16,r=2] parkour_npc1
summon cleverlike:makecodenode 92 105.25 16

tag @e[tag=main] add parkourloaded