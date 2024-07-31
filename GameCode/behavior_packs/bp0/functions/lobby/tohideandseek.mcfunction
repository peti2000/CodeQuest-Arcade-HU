tp @a 223 104 24 facing 220 104 23
spawnpoint @a 223 104 24
execute as @e[tag=main,tag=!hnsloaded] at @s run schedule on_area_loaded add 220 104 24 220 104 22 hideandseek/init 
scoreboard players set @e[tag=main] bar -1
execute as @p run tp @c 230 104 16 facing 230 104 26
