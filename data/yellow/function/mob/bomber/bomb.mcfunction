scoreboard players add @s yellow_debug 1

execute if score @s yellow_debug matches 1 run data modify entity @s owner set from entity @e[type=piglin, limit=1, sort=nearest, tag=yellow.bomber] UUID

tp @s @e[type=piglin, distance=..2, sort=nearest, limit=1]
