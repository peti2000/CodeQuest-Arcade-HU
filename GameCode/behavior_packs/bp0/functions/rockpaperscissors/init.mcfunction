summon cleverlike:arcade2 242 100 105
execute as @e[type=cleverlike:arcade2,x=242,y=100,z=105,r=2] at @s run tp @s ~~1~ facing ~~~10
dialogue change @e[type=cleverlike:arcade2,x=242,y=100,z=105,r=2] rockpaperscissors_game1

summon cleverlike:npc 244 100 105 e_npc4
execute as @e[type=cleverlike:npc,x=244,y=100,z=105,r=2] at @s run tp @s ~~1~ facing ~~~10
dialogue change @e[type=cleverlike:npc,x=244,y=100,z=105,r=2] rockpaperscissors_npc1
summon cleverlike:makecodenode 244 102.25 105

fill 247 98 115 249 98 117 air 
setblock 248 98 116 allow

tag @e[tag=main] add rpsloaded