summon marker 0 0 0 {Tags:["object_jump"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object_jump,limit=1] ^ ^0.8 ^-0.6
# execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object_jump,limit=1] ^ ^0.6 ^-1.4

execute as @s run data modify entity @s Motion set from entity @e[tag=object_jump,limit=1, sort=nearest] Pos

kill @e[tag=object_jump]


# #生成箭矢：
# summon arrow ~ ~1.6 ~
# #將目標點從(0,0,0)往前移動一格：
# execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object,limit=1] ^ ^ ^1
# #將目標點的座標，存入箭矢的Motion中：
# execute positioned ~ ~1.6 ~ run data modify entity @e[type=arrow,limit=1,sort=nearest] Motion set from entity @e[tag=object,limit=1] Pos


# https://forum.gamer.com.tw/C.php?bsn=18673&snA=183883