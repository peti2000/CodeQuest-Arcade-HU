fill 200 104 171 214 104 165 air
fill 277 110 299 277 111 299 air



summon cleverlike:npc 277 114 299 e_npc1
tag @e[type=cleverlike:npc,x=277,y=114,z=299,r=2] add host
tag @e[type=cleverlike:npc,x=277,y=114,z=299,r=2] add main
event entity @e[type=cleverlike:npc,x=277,y=114,z=299,r=2] e_marker


summon cleverlike:officechair 262 112 299 
execute as @e[type=cleverlike:officechair,x=262,y=112,z=299,r=1] at @s run tp @s ~~~ facing 252 112 299

summon cleverlike:npc 252 112 311 e_npc5
summon cleverlike:npc 252 112 287 e_npc7

summon cleverlike:npc3 259 112 302

summon cleverlike:officechair 255 112 303
execute as @e[type=cleverlike:officechair,x=255,y=112,z=303,r=1] at @s run tp @s ~~~ facing 255 112 293

summon cleverlike:officechair 251 112 302
execute as @e[type=cleverlike:officechair,x=251,y=112,z=302,r=1] at @s run tp @s ~~~ facing 251 112 292

summon cleverlike:officechair 246 112 284
execute as @e[type=cleverlike:officechair,x=246,y=112,z=284,r=1] at @s run tp @s ~~~ facing 246 112 274

structure load mystructure:npcsit4 250 112 284 180_degrees

summon cleverlike:officechair 254 112 284
execute as @e[type=cleverlike:officechair,x=254,y=112,z=284,r=1] at @s run tp @s ~~~ facing 254 112 274

summon cleverlike:officechair 258 112 284
execute as @e[type=cleverlike:officechair,x=258,y=112,z=284,r=1] at @s run tp @s ~~~ facing 258 112 274


summon cleverlike:officechair 248 112 299
execute as @e[type=cleverlike:officechair,x=248,y=112,z=299,r=1] at @s run tp @s ~~~ facing 258 112 299


summon cleverlike:officechair 251 112 296
execute as @e[type=cleverlike:officechair,x=251,y=112,z=296,r=1] at @s run tp @s ~~~ facing 251 112 306

summon cleverlike:officechair 255 112 295
execute as @e[type=cleverlike:officechair,x=255,y=112,z=295,r=1] at @s run tp @s ~~~ facing 255 112 305

structure load mystructure:npcsit6 259 112 296 0_degrees

summon cleverlike:officechair 258 112 314
execute as @e[type=cleverlike:officechair,x=258,y=112,z=314,r=1] at @s run tp @s ~~~ facing 258 112 324

summon cleverlike:officechair 254 112 314
execute as @e[type=cleverlike:officechair,x=254,y=112,z=314,r=1] at @s run tp @s ~~~ facing 254 112 324

summon cleverlike:officechair 250 112 314
execute as @e[type=cleverlike:officechair,x=250,y=112,z=314,r=1] at @s run tp @s ~~~ facing 250 112 324

structure load mystructure:npcsit2 246 112 314 0_degrees




