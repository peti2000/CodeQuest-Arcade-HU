# Setup
execute if score @e[tag=main,c=1] keyframe matches 0 run title @a times 10 10 10
execute if score @e[tag=main,c=1] keyframe matches 0 run title @a actionbar m_fade
execute if score @e[tag=main,c=1] keyframe matches 0 run effect @a invisibility 52 1 true
execute if score @e[tag=main,c=1] keyframe matches 5 run summon cleverlike:scenerider 3063 154 57
execute if score @e[tag=main,c=1] keyframe matches 7 run tag @e[type=cleverlike:scenerider] add scenerider
execute if score @e[tag=main,c=1] keyframe matches 8 run ride @a[c=1] start_riding @e[tag=scenerider] teleport_rider
execute if score @e[tag=main,c=1] keyframe matches 11 run tp @e[tag=scenerider,c=1] 3047.25342 179.53309 41.12935 275.96554 30
execute if score @e[tag=main,c=1] keyframe matches 13 run playsound cleverlike.spaceoutside @a 
execute if score @e[tag=main,c=1,tag=!skipped] keyframe matches 500 run playsound cleverlike.spaceoutside @a 
execute if score @e[tag=main,c=1] keyframe matches 11 run gamemode c @a
execute if score @e[tag=main,c=1] keyframe matches 10 run title @a times 10 1001 10
execute if score @e[tag=main,c=1] keyframe matches 10 run title @a title m_bars
execute if score @e[tag=main,c=1] keyframe matches 0..999 run function cutscene/opening/c_0_999
execute if score @e[tag=main,c=1] keyframe matches 1000..1020 run function cutscene/opening/c_1000_1020

execute if score @e[tag=main,c=1] keyframe matches 0..100 run ride @a[c=1] start_riding @e[tag=scenerider] teleport_rider
execute if score @e[tag=main,c=1,tag=!skipped] keyframe matches 101..1000 run titleraw @a actionbar {"rawtext":[{"translate":"actionbar.intro.skip"}]}

# Ending Fade
execute if score @e[tag=main,c=1,tag=!skipped] keyframe matches 1011 run  title @a times 10 10 10
execute if score @e[tag=main,c=1,tag=!skipped] keyframe matches 1011 run  title @a actionbar m_fade

# Cleanup
execute if score @e[tag=main,c=1] keyframe matches 1022 run title @a title m_clear
execute if score @e[tag=main,c=1] keyframe matches 1022 run tag @e[tag=main] remove openingscene
execute if score @e[tag=main,c=1] keyframe matches 1022 run kill @e[tag=scenerider]
execute if score @e[tag=main,c=1,tag=!skipped] keyframe matches 1022 as @p run function cutscene/opening/skip
execute if score @e[tag=main,c=1] keyframe matches 1022 run scoreboard players set @e[tag=main,c=1] keyframe -1

# Increment keyframe
execute if score @e[tag=main,c=1] keyframe matches 0..1021 run scoreboard players add @e[tag=main,c=1] keyframe 1
