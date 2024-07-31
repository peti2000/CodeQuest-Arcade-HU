clone 55 82 173 53 81 172 36 102 37
clone 9 66 159 16 71 166 37 100 28
tp @a 39 103 34 facing 31 98 38

tp @e[tag=tutnpc] 40 103 32 facing @p
event entity @e[tag=tutnpc] e_marker
dialogue change @e[tag=tutnpc] tutnpc_lesson6_step1
tag @e[tag=main] add dialogdelay