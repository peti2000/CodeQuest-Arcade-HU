effect @e[type=cleverlike:officechair] slowness 100 255 true
effect @a instant_health 10 255 true
effect @a saturation 10 1 true
execute as @a[tag=nolight] as @a[tag=!nolight] run tag @s add nolight
effect @a[tag=!nolight] night_vision 1000 1 true

function actionbars

execute as @e[tag=main,tag=openingscene,scores={keyframe=0..}] run function cutscene/opening/cutscene
execute as @e[tag=main,tag=openingscene,scores={keyframe=100..}] as @a[x=2900,y=0,z=10,dx=200,dy=178,dz=50] run function cutscene/opening/skip

execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run scoreboard players set @e[tag=main] bar 1
execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run tag @e[tag=host] remove host
execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run tag @e[type=cleverlike:npc,x=207,y=104,z=170,r=2] add host
execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run tag @a add nolight
execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run effect @a clear
execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run tag @e[tag=main] add offship
execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run stopsound @a cleverlike.space
execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run stopsound @a cleverlike.spaceoutside
execute as @e[tag=main,tag=teleportactive] as @a[x=228,y=104,z=266,r=1] run tp @s 207 104 185 facing 207 104 170


execute as @a[tag=prestart,x=282,y=115,z=299,rm=1] run function ship/startgame
execute as @a[tag=unstartedgame,x=3000,y=181,z=3000,r=3] run function startgame

execute as @e[tag=main,tag=introtitles] run scoreboard players add @e[tag=main] introtitles 1
execute as @e[tag=main,tag=introtitles,scores={introtitles=..199}] run tp @a 3000 181 3000 275.96554 30
execute as @e[tag=main,tag=introtitles,scores={introtitles=20}] run titleraw @a subtitle {"rawtext":[{"translate":"intro.subtitle"}]}
execute as @e[tag=main,tag=introtitles,scores={introtitles=20}] run titleraw @a title {"rawtext":[{"translate":"intro.title"}]}
execute as @e[tag=main,tag=introtitles,scores={introtitles=200}] as @p at @s run function cutscene/opening/start
execute as @e[tag=main,tag=introtitles,scores={introtitles=220..}] run scoreboard players set @e[tag=main] introtitles 1


execute as @e[tag=host,tag=runto1,x=261,y=112,z=293,r=3] run tp @e[type=cleverlike:marker] 13 69 163
execute as @e[tag=host,tag=runto1,x=261,y=112,z=293,r=3] run schedule on_area_loaded add 242 111 293 242 112 293 schedule/shiprun2
execute as @e[tag=host,tag=runto1,x=261,y=112,z=293,r=3] run tag @s remove runto1


execute as @e[tag=host,tag=runto2,x=242,y=112,z=293,r=3] run tp @e[type=cleverlike:marker] 13 69 163
execute as @e[tag=host,tag=runto2,x=242,y=112,z=293,r=3] run schedule on_area_loaded add 227 109 284 227 110 284 schedule/shiprun3
execute as @e[tag=host,tag=runto2,x=242,y=112,z=293,r=3] run tag @s remove runto2


execute as @e[tag=host,tag=runto3,x=227,y=110,z=284,r=3] run tp @e[type=cleverlike:marker] 13 69 163
execute as @e[tag=host,tag=runto3,x=227,y=110,z=284,r=3] run schedule on_area_loaded add 226 103 266 228 104 260 schedule/shiprun4
execute as @e[tag=host,tag=runto3,x=227,y=110,z=284,r=3] run tag @s remove runto3

execute as @e[tag=host,tag=runto4,x=226,y=104,z=266,r=2] run tp @s 226 104 266 facing @p
execute as @e[tag=host,tag=runto4,x=226,y=104,z=266,r=2] run event entity @s e_nofollow
execute as @e[tag=host,tag=runto4,x=226,y=104,z=266,r=2] run event entity @s e_marker
execute as @e[tag=host,tag=runto4,x=226,y=104,z=266,r=2] run tp @e[type=cleverlike:marker] 13 69 163
execute as @e[tag=host,tag=runto4,x=226,y=104,z=266,r=2] run tag @s add to7delay
execute as @e[tag=host,tag=runto4,x=226,y=104,z=266,r=2] run scoreboard players set @e[tag=main] bar 1
execute as @e[tag=host,tag=runto4,x=226,y=104,z=266,r=2] run tag @s remove runto4

execute as @e[tag=host,tag=to7delay,scores={to7delay=..6}] run scoreboard players add @s to7delay 1
execute as @e[tag=host,tag=to7delay,scores={to7delay=..100}] run tp @s 226 104 266 facing @p
execute as @e[tag=host,tag=to7delay,scores={to7delay=5}] run dialogue change @s host_ship_intro7

execute as @p[tag=jump,x=198,y=105,z=159,dx=19,dy=2,dz=25] run function lobby/jumped

execute as @e[tag=host,tag=testforagent] as @p as @c run function lobby/agentspawned

execute as @e[tag=main,tag=tutdelay] run scoreboard players add @e[tag=main] tutdelay 1
execute as @e[tag=main,scores={tutdelay=0,tutstep=21}] as @p as @c[x=127,y=98,z=153,r=1] run tag @e[tag=main] add tutdelay
execute as @e[tag=main,scores={tutdelay=0,tutstep=22}] if block 126 98 153 air run tag @e[tag=main] add tutdelay
execute as @e[tag=main,scores={tutdelay=0,tutstep=23}] if block 124 98 153 lit_redstone_lamp run tag @e[tag=main] add tutdelay
execute as @e[tag=main,scores={tutdelay=0,tutstep=31}] if block 117 98 157 redstone_block run tag @e[tag=main] add tutdelay
execute as @e[tag=main,scores={tutdelay=0,tutstep=41}] if blocks 109 98 154 97 98 154 97 99 154 all run tag @e[tag=main] add tutdelay
execute as @e[tag=main,scores={tutdelay=0,tutstep=51}] if blocks 85 97 157 85 97 145 86 97 145 all if blocks 85 98 145 85 98 146 85 99 145 all if blocks 85 98 149 85 98 148 85 99 148 all if blocks 85 98 151 85 98 151 85 99 151 all if blocks 85 98 155 85 98 153 85 99 153 all if blocks 85 98 157 85 98 157 85 99 157 all run tag @e[tag=main] add tutdelay
execute as @e[tag=main,scores={tutdelay=0,tutstep=61}] if blocks 31 98 39 51 98 39 31 98 37 all run tag @e[tag=main] add tutdelay


execute as @e[tag=main,scores={tutdelay=0,tutstep=21}] as @p as @c[x=127,y=98,z=153,r=1] run playsound cleverlike.fastsuccess @a
execute as @e[tag=main,scores={tutdelay=0,tutstep=22}] if block 126 98 153 air run playsound cleverlike.fastsuccess @a
execute as @e[tag=main,scores={tutdelay=0,tutstep=23}] if block 124 98 153 lit_redstone_lamp run playsound cleverlike.fastsuccess @a
execute as @e[tag=main,scores={tutdelay=0,tutstep=31}] if block 117 98 157 redstone_block run playsound cleverlike.turnon @a
execute as @e[tag=main,scores={tutdelay=0,tutstep=41}] if blocks 109 98 154 97 98 154 97 99 154 all run playsound cleverlike.success @a
execute as @e[tag=main,scores={tutdelay=0,tutstep=51}] if blocks 85 97 157 85 97 145 86 97 145 all if blocks 85 98 145 85 98 146 85 99 145 all if blocks 85 98 149 85 98 148 85 99 148 all if blocks 85 98 151 85 98 151 85 99 151 all if blocks 85 98 155 85 98 153 85 99 153 all if blocks 85 98 157 85 98 157 85 99 157 all run playsound cleverlike.fastsuccess @a
execute as @e[tag=main,scores={tutdelay=0,tutstep=61}] if blocks 31 98 39 51 98 39 31 98 37 all run playsound cleverlike.fastsuccess @a

execute as @e[tag=main,scores={tutdelay=0,tutstep=21}] as @p as @c[x=127,y=98,z=153,r=1] run scoreboard players set @e[tag=main] bar -1
execute as @e[tag=main,scores={tutdelay=0,tutstep=22}] if block 126 98 153 air run scoreboard players set @e[tag=main] bar -1
execute as @e[tag=main,scores={tutdelay=0,tutstep=23}] if block 124 98 153 lit_redstone_lamp run scoreboard players set @e[tag=main] bar -1
execute as @e[tag=main,scores={tutdelay=0,tutstep=31}] if block 117 98 157 redstone_block run scoreboard players set @e[tag=main] bar -1
execute as @e[tag=main,scores={tutdelay=0,tutstep=41}] if blocks 109 98 154 97 98 154 97 99 154 all run scoreboard players set @e[tag=main] bar -1
execute as @e[tag=main,scores={tutdelay=0,tutstep=51}] if blocks 85 97 157 85 97 145 86 97 145 all if blocks 85 98 145 85 98 146 85 99 145 all if blocks 85 98 149 85 98 148 85 99 148 all if blocks 85 98 151 85 98 151 85 99 151 all if blocks 85 98 155 85 98 153 85 99 153 all if blocks 85 98 157 85 98 157 85 99 157 all run scoreboard players set @e[tag=main] bar -1
execute as @e[tag=main,scores={tutdelay=0,tutstep=61}] if blocks 31 98 39 51 98 39 31 98 37 all run scoreboard players set @e[tag=main] bar -1

execute as @e[tag=main,scores={tutdelay=30,tutstep=21}] as @p as @c[x=127,y=98,z=153,r=1] run dialogue change @e[tag=tutnpc] tutnpc_lesson2_step2
execute as @e[tag=main,scores={tutdelay=30,tutstep=22}] if block 126 98 153 air run dialogue change @e[tag=tutnpc] tutnpc_lesson2_step3
execute as @e[tag=main,scores={tutdelay=30,tutstep=23}] if block 124 98 153 lit_redstone_lamp run dialogue change @e[tag=tutnpc] tutnpc_lesson2_step4
execute as @e[tag=main,scores={tutdelay=30,tutstep=31}] if block 117 98 157 redstone_block run dialogue change @e[tag=tutnpc] tutnpc_lesson3_step2
execute as @e[tag=main,scores={tutdelay=30,tutstep=41}] if blocks 109 98 154 97 98 154 97 99 154 all run dialogue change @e[tag=tutnpc] tutnpc_lesson4_step2
execute as @e[tag=main,scores={tutdelay=30,tutstep=51}] if blocks 85 97 157 85 97 145 86 97 145 all if blocks 85 98 145 85 98 146 85 99 145 all if blocks 85 98 149 85 98 148 85 99 148 all if blocks 85 98 151 85 98 151 85 99 151 all if blocks 85 98 155 85 98 153 85 99 153 all if blocks 85 98 157 85 98 157 85 99 157 all run dialogue change @e[tag=tutnpc] tutnpc_lesson5_step2
execute as @e[tag=main,scores={tutdelay=30,tutstep=61}] if blocks 31 98 39 51 98 39 31 98 37 all run dialogue change @e[tag=tutnpc] tutnpc_lesson6_step2

execute as @e[tag=main,scores={tutdelay=30,tutstep=21}] as @p as @c[x=127,y=98,z=153,r=1] run dialogue open @e[tag=tutnpc] @a tutnpc_lesson2_step2
execute as @e[tag=main,scores={tutdelay=30,tutstep=22}] if block 126 98 153 air run dialogue open @e[tag=tutnpc] @a tutnpc_lesson2_step3
execute as @e[tag=main,scores={tutdelay=30,tutstep=23}] if block 124 98 153 lit_redstone_lamp run dialogue open @e[tag=tutnpc] @a tutnpc_lesson2_step4
execute as @e[tag=main,scores={tutdelay=30,tutstep=31}] if block 117 98 157 redstone_block run dialogue open @e[tag=tutnpc] @a tutnpc_lesson3_step2
execute as @e[tag=main,scores={tutdelay=30,tutstep=41}] if blocks 109 98 154 97 98 154 97 99 154 all run dialogue open @e[tag=tutnpc] @a tutnpc_lesson4_step2
execute as @e[tag=main,scores={tutdelay=30,tutstep=51}] if blocks 85 97 157 85 97 145 86 97 145 all if blocks 85 98 145 85 98 146 85 99 145 all if blocks 85 98 149 85 98 148 85 99 148 all if blocks 85 98 151 85 98 151 85 99 151 all if blocks 85 98 155 85 98 153 85 99 153 all if blocks 85 98 157 85 98 157 85 99 157 all run dialogue open @e[tag=tutnpc] @a tutnpc_lesson5_step2
execute as @e[tag=main,scores={tutdelay=30,tutstep=61}] if blocks 31 98 39 51 98 39 31 98 37 all run dialogue open @e[tag=tutnpc] @a tutnpc_lesson6_step2
execute as @e[tag=main,scores={tutdelay=30}] run tag @e[tag=main] remove tutdelay
execute as @e[tag=main,scores={tutdelay=30}] run scoreboard players set @e[tag=main] tutdelay 0 


execute as @e[tag=main,scores={tutdelay=0,tutstep=51,oopsdelay=0..},tag=!tutdelay] as @p as @c[x=86,y=98,z=158,r=1] run scoreboard players add @e[tag=main] oopsdelay 1
execute as @e[tag=main,scores={tutdelay=0,tutstep=51,oopsdelay=25..},tag=!tutdelay] as @p as @c[x=86,y=98,z=158,r=1] run dialogue open @e[tag=tutnpc] @a tutnpc_lesson5_oops





execute as @e[tag=main,tag=dialogdelay] run scoreboard players add @e[tag=main] dialogdelay 1
execute as @e[tag=main,scores={dialogdelay=30,dialogstep=1}] run dialogue open @e[tag=tutnpc] @a tutnpc_lesson2_step1
execute as @e[tag=main,scores={dialogdelay=30,dialogstep=2}] run dialogue open @e[tag=tutnpc] @a tutnpc_lesson3_step1
execute as @e[tag=main,scores={dialogdelay=30,dialogstep=3}] run dialogue open @e[tag=tutnpc] @a tutnpc_lesson4_step1
execute as @e[tag=main,scores={dialogdelay=30,dialogstep=4}] run dialogue open @e[tag=tutnpc] @a tutnpc_lesson5_step1
execute as @e[tag=main,scores={dialogdelay=30,dialogstep=5}] run dialogue open @e[tag=tutnpc] @a tutnpc_lesson6_step1
execute as @e[tag=main,scores={dialogdelay=30}] run tag @e[tag=main] remove dialogdelay
execute as @e[tag=main,scores={dialogdelay=30}] run scoreboard players set @e[tag=main] dialogdelay 0



execute as @e[tag=main,tag=aimtrainerloaded,scores={aimtrainerdelay=0..}] run scoreboard players add @s aimtrainerdelay 1
execute as @e[tag=main,tag=aimtrainerloaded,scores={aimtrainerdelay=20..}] run dialogue open @e[type=cleverlike:npc3,x=179,y=104,z=162,r=2] @p aimtrainer_npc_intro
execute as @e[tag=main,tag=byoloaded,scores={buildyourowndelay=0..}] run scoreboard players add @s buildyourowndelay 1
execute as @e[tag=main,tag=byoloaded,scores={buildyourowndelay=20..}] run dialogue open @e[type=cleverlike:npc,x=72,y=91,z=161,r=2] @p buildyourown_npc_intro
execute as @e[tag=main,tag=dunktankloaded,scores={dunktankdelay=0..}] run scoreboard players add @s dunktankdelay 1
execute as @e[tag=main,tag=dunktankloaded,scores={dunktankdelay=20..}] run dialogue open @e[type=cleverlike:npc,x=17,y=101,z=91,r=2] @p dunktank_npc_intro
execute as @e[tag=main,tag=hnsloaded,scores={hideandseekdelay=0..}] run scoreboard players add @s hideandseekdelay 1
execute as @e[tag=main,tag=hnsloaded,scores={hideandseekdelay=20..}] run dialogue open @e[type=cleverlike:npc,x=220,y=104,z=22,r=2] @p hideandseek_npc_intro
execute as @e[tag=main,tag=parkourloaded,scores={parkourdelay=0..}] run scoreboard players add @s parkourdelay 1
execute as @e[tag=main,tag=parkourloaded,scores={parkourdelay=20..}] run dialogue open @e[type=cleverlike:npc,x=92,y=103,z=16,r=2] @p parkour_npc_intro
execute as @e[tag=main,tag=rpsloaded,scores={rockpaperscissorsdelay=0..}] run scoreboard players add @s rockpaperscissorsdelay 1
execute as @e[tag=main,tag=rpsloaded,scores={rockpaperscissorsdelay=20..}] run dialogue open @e[type=cleverlike:npc,x=244,y=100,z=105,r=2] @p rockpaperscissors_npc_intro



execute as @e[tag=main,tag=playalarm,scores={alarmdelay=0..}] run scoreboard players add @s alarmdelay 1
execute as @e[tag=main,tag=playalarm,scores={alarmdelay=1}] run replaceitem entity @a slot.armor.head 0 carved_pumpkin
execute as @e[tag=main,tag=playalarm,scores={alarmdelay=1}] run playsound cleverlike.alarm @a
execute as @e[tag=main,tag=playalarm,scores={alarmdelay=8}] run replaceitem entity @a slot.armor.head 0 air
execute as @e[tag=main,tag=playalarm,scores={alarmdelay=15}] run replaceitem entity @a slot.armor.head 0 carved_pumpkin
execute as @e[tag=main,tag=playalarm,scores={alarmdelay=22}] run replaceitem entity @a slot.armor.head 0 air
execute as @e[tag=main,tag=playalarm,scores={alarmdelay=29}] run replaceitem entity @a slot.armor.head 0 carved_pumpkin
execute as @e[tag=main,tag=playalarm,scores={alarmdelay=36}] run replaceitem entity @a slot.armor.head 0 air
execute as @e[tag=main,tag=playalarm,scores={alarmdelay=36}] run tag @s remove playalarm
execute as @e[tag=main,scores={alarmdelay=36}] run scoreboard players set @s alarmdelay 0


execute as @e[x=13,y=69,z=163,r=10,type=!player] run scoreboard players add @s deathclock 1
execute as @e[type=!player,scores={deathclock=10..}] run kill @s
execute as @e[type=!player,scores={deathclock=10..}] run remove @s
execute as @e[type=!player,scores={deathclock=20..}] run tp @s ~ -70 ~
execute as @e[type=!player,scores={deathclock=20..}] run event entity @s e_despawn


execute as @e[tag=main,tag=skipped,tag=!offship,scores={audioloop=5}] run stopsound @a cleverlike.spaceoutside
execute as @e[tag=main,tag=skipped,tag=!offship,scores={audioloop=5}] run playsound cleverlike.space @a

execute as @e[tag=main,tag=skipped,tag=!offship] run scoreboard players add @e[tag=main] audioloop 1
execute as @e[tag=main,tag=skipped,tag=!offship,scores={audioloop=860..}] run scoreboard players set @e[tag=main] audioloop 0

execute as @e[tag=main,tag=!cabinetsspawned] run gamemode a @a[m=!a]
