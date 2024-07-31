summon cleverlike:npc 207 104 170 e_npc1
summon cleverlike:poi 207 104 170 e_npcpoi

dialogue change @e[type=cleverlike:npc,x=207,y=104,z=170,r=2] host_lobby_intro1
event entity @e[type=cleverlike:npc,x=207,y=104,z=170,r=2] e_marker
summon cleverlike:fakeagent 209 104 170
execute as @e[type=cleverlike:fakeagent] at @s run tp @s ~~~ facing 209 104 180
