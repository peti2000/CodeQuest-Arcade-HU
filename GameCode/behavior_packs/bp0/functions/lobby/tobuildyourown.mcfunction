tp @a 69 91 159 facing 72 91 160
spawnpoint @a 69 91 159
execute as @e[tag=main,tag=!byoloaded] at @s run schedule on_area_loaded add 72 91 159 72 91 161 buildyourown/init 
scoreboard players set @e[tag=main] bar -1
gamemode c @a

