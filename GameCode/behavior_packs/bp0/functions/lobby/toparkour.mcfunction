tp @a 95 103 18 facing 92 103 17
spawnpoint @a 95 103 18
execute as @e[tag=main,tag=!parkourloaded] at @s run schedule on_area_loaded add 92 102 18 92 105 16 parkour/init 
scoreboard players set @e[tag=main] bar -1
gamemode c @a
give @a minecraft:diamond_block
give @a minecraft:gold_block