

scoreboard objectives add tutstep dummy tutstep
scoreboard players set @e[tag=main] tutstep 0

scoreboard objectives add to7delay dummy to7delay
scoreboard players set @e[tag=main] to7delay 0

scoreboard objectives add tutdelay dummy tutdelay
scoreboard players set @e[tag=main] tutdelay 0
scoreboard objectives add dialogdelay dummy dialogdelay
scoreboard players set @e[tag=main] dialogdelay 0
scoreboard objectives add dialogstep dummy dialogstep
scoreboard players set @e[tag=main] dialogstep 0
scoreboard objectives add kidsmet dummy kidsmet
scoreboard players set @e[tag=main] kidsmet 0
scoreboard objectives add kid2met dummy kid2met
scoreboard players set @e[tag=main] kid2met 0
scoreboard objectives add kid3met dummy kid3met
scoreboard players set @e[tag=main] kid3met 0
scoreboard objectives add kid4met dummy kid4met
scoreboard players set @e[tag=main] kid4met 0
scoreboard objectives add kid5met dummy kid5met
scoreboard players set @e[tag=main] kid5met 0
scoreboard objectives add kid6met dummy kid6met
scoreboard players set @e[tag=main] kid6met 0
scoreboard objectives add kid7met dummy kid7met
scoreboard players set @e[tag=main] kid7met 0
scoreboard objectives add bar dummy bar
scoreboard players set @e[tag=main] bar 0
scoreboard objectives add rotatingbar dummy rotatingbar
scoreboard players set @e[tag=main] rotatingbar 0
scoreboard objectives add 1stimer dummy 1stimer
scoreboard players set @e[tag=main] 1stimer 0
scoreboard objectives add aimtrainerdelay dummy aimtrainerdelay
scoreboard players set @e[tag=main] aimtrainerdelay 0
scoreboard objectives add buildyourowndelay dummy buildyourowndelay
scoreboard players set @e[tag=main] buildyourowndelay 0
scoreboard objectives add dunktankdelay dummy dunktankdelay
scoreboard players set @e[tag=main] dunktankdelay 0
scoreboard objectives add hideandseekdelay dummy hideandseekdelay
scoreboard players set @e[tag=main] hideandseekdelay 0
scoreboard objectives add parkourdelay dummy parkourdelay
scoreboard players set @e[tag=main] parkourdelay 0
scoreboard objectives add rockpaperscissorsdelay dummy rockpaperscissorsdelay
scoreboard players set @e[tag=main] rockpaperscissorsdelay 0
scoreboard objectives add oopsdelay dummy oopsdelay
scoreboard players set @e[tag=main] oopsdelay 0
scoreboard objectives add alarmdelay dummy alarmdelay
scoreboard players set @e[tag=main] alarmdelay 0
scoreboard objectives add deathclock dummy deathclock
scoreboard players set @e[tag=main] deathclock 0
scoreboard objectives add introtitles dummy introtitles
scoreboard players set @e[tag=main] introtitles 0
scoreboard objectives add audioloop dummy audioloop
scoreboard players set @e[tag=main] audioloop 0
scoreboard objectives add keyframe dummy keyframe
scoreboard players set @e[tag=main] keyframe -1

effect @a clear

title @a times 10 180 10


dialogue change @e[type=cleverlike:npc,x=246,y=112,z=314,r=2] kid2_ship_intro1
dialogue change @e[type=cleverlike:npc3,x=259,y=112,z=302,r=2] kid3_ship_intro1
dialogue change @e[type=cleverlike:npc,x=250,y=112,z=284,r=2] kid4_ship_intro1
dialogue change @e[type=cleverlike:npc,x=252,y=112,z=311,r=2] kid5_ship_intro1
dialogue change @e[type=cleverlike:npc,x=259,y=112,z=296,r=2] kid6_ship_intro1
dialogue change @e[type=cleverlike:npc,x=252,y=112,z=287,r=2] kid7_ship_intro1

tp @a 3000 181 3000
tag @a add unstartedgame


