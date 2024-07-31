tp @a 242 100 108 facing 243 100 105
spawnpoint @a 242 100 108
execute as @e[tag=main,tag=!rpsloaded] at @s run schedule on_area_loaded add 242 100 105 249 100 117 rockpaperscissors/init 
scoreboard players set @e[tag=main] bar -1
execute as @p run tp @c 248 100 116 facing 238 100 116
