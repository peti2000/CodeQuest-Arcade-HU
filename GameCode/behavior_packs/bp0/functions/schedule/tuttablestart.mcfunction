clone 9 66 159 16 71 166 123 100 143
summon cleverlike:npc 127 103 147 e_npc1
tag @e[type=cleverlike:npc,x=127,y=103,z=147,r=2] add tutnpc
dialogue change @e[tag=tutnpc] tutnpc_lesson2_step1
tp @a 127 103 149 facing 127 98 153
execute as @p run tp @c 128 98 153 facing 118 98 153
scoreboard players set @e[tag=main] dialogstep 1
tag @e[tag=main] add tutdelay
tag @e[tag=main] add dialogdelay

clone 70 82 173 68 81 172 126 102 151