summon cleverlike:arcade5 19 101 91
execute as @e[type=cleverlike:arcade5,x=19,y=101,z=91,r=2] at @s run tp @s ~~1~ facing ~~~-10
dialogue change @e[type=cleverlike:arcade5,x=19,y=101,z=91,r=2] dunktank_game1

summon cleverlike:npc 17 101 91 e_npc7
execute as @e[type=cleverlike:npc,x=17,y=101,z=91,r=2] at @s run tp @s ~~1~ facing ~~~-10
dialogue change @e[type=cleverlike:npc,x=17,y=101,z=91,r=2] dunktank_npc1
summon cleverlike:makecodenode 17 103.25 91
tag @e[tag=main] add dunktankloaded