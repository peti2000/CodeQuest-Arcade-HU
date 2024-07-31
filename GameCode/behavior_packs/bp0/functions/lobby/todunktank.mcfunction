tp @a 19 101 88 facing 18 101 91
spawnpoint @a 19 101 88
execute as @e[tag=main,tag=!dunktankloaded] at @s run schedule on_area_loaded add 19 101 91 17 101 91 dunktank/init 
scoreboard players set @e[tag=main] bar -1
execute as @p run tp @c 9 101 80 facing 0 101 80
