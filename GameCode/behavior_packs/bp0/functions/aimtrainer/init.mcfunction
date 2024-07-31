setblock 179 103 159 concrete 12
summon cleverlike:arcade3 179 104 160
execute as @e[type=cleverlike:arcade3,x=179,y=104,z=160,r=2] at @s run tp @s ~~1~ facing ~-10~~
dialogue change @e[type=cleverlike:arcade3,x=179,y=104,z=160,r=2] aimtrainer_game1

summon cleverlike:npc3 179 104 162 
execute as @e[type=cleverlike:npc3,x=179,y=104,z=162,r=2] at @s run tp @s ~~1~ facing ~-10~~
dialogue change @e[type=cleverlike:npc3,x=179,y=104,z=162,r=2] aimtrainer_npc1
summon cleverlike:makecodenode 179 106.1 162 

tag @e[tag=main] add aimtrainerloaded