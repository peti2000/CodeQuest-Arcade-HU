title @a times 10 10 10
title @a actionbar m_fade
tp @a 282 115 299 facing 272 115 299
tag @a add prestart
scoreboard players set @e[tag=main] bar 1
title @a title m_clear
tag @e[tag=main] add skipped
effect @a clear
gamemode a @a
stopsound @a cleverlike.spaceoutside
playsound cleverlike.space @a
inputpermission set @a camera enabled