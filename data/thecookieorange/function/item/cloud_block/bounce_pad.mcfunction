scoreboard players add @s orange_debug 1

particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0.01 2

particle cloud ~ ~0.5 ~ 0.5 0.5 0.5 0.05 5

execute as @e[distance=0.1..2, type=!player, type=!marker] at @s run function thecookieorange:item/cloud_block/bounce_motion

execute if score @s orange_debug matches 200.. run kill @s