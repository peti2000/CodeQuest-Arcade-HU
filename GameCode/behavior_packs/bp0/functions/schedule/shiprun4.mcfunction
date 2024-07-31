summon cleverlike:marker 226 104 266
summon cleverlike:teleporter 226 104 266
tp @e[type=cleverlike:teleporter,x=226,y=104,z=266,r=1] 226 104 266 facing 226 104 256
summon cleverlike:teleporter 228 104 266
tp @e[type=cleverlike:teleporter,x=228,y=104,z=266,r=1] 228 104 266 facing 228 104 256

summon cleverlike:staypoi 226 104 266 e_npcpoi

schedule on_area_loaded add 207 103 170 207 104 170 schedule/lobbyloaded
tag @e[tag=host] add runto4

