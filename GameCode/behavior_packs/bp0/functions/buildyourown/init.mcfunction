summon cleverlike:arcade4 72 91 159
execute as @e[type=cleverlike:arcade4,x=72,y=91,z=159,r=2] at @s run tp @s ~~1~ facing ~-10~~
dialogue change @e[type=cleverlike:arcade4,x=72,y=91,z=159,r=2] buildyourown_game1

summon cleverlike:npc 72 91 161 e_npc2
execute as @e[type=cleverlike:npc,x=72,y=91,z=161,r=2] at @s run tp @s ~~1~ facing ~-10~~
dialogue change @e[type=cleverlike:npc,x=72,y=91,z=161,r=2] buildyourown_npc1
summon cleverlike:makecodenode 72 93.25 161
tag @e[tag=main] add byoloaded