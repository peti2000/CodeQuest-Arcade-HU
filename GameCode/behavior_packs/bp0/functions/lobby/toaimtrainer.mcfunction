tp @a 176 104 159 facing 179 104 161
spawnpoint @a 176 104 159
execute as @e[tag=main,tag=!aimtrainerloaded] at @s run schedule on_area_loaded add 179 103 159 179 104 162 aimtrainer/init 
scoreboard players set @e[tag=main] bar -1
execute as @p run tp @c 166 104 173 facing 166 104 163
gamemode c @a