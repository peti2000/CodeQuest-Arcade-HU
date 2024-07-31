summon cleverlike:arcade1 220 104 24
execute as @e[type=cleverlike:arcade1,x=220,y=104,z=24,r=2] at @s run tp @s ~~1~ facing ~10~~
dialogue change @e[type=cleverlike:arcade1,x=220,y=104,z=24,r=2] hideandseek_game1

summon cleverlike:npc 220 104 22 e_npc6
execute as @e[type=cleverlike:npc,x=220,y=104,z=22,r=2] at @s run tp @s ~~1~ facing ~10~~
dialogue change @e[type=cleverlike:npc,x=220,y=104,z=22,r=2] hideandseek_npc1

summon cleverlike:makecodenode 220 106.25 22
tag @e[tag=main] add hnsloaded