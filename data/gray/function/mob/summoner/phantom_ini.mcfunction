execute if entity @e[distance=..3, type=!#minecraft:not_mob, team=!gray_cloud_mobs, tag=!gray.summoner_wither_skeleton, tag=!gray.summoner_wither_skeleton_elite] run kill @s

particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.01 2 normal

execute if predicate pink:is_in_water run tp @s ~ ~-1000 ~

scoreboard players add @s gray_debug 1

kill @s[scores={gray_debug=600..}] 
