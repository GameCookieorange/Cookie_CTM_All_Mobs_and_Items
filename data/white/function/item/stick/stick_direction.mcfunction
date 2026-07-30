scoreboard players add @s white_timer 1

execute if score @s white_timer matches 1 run data modify entity @s Rotation set from entity @p Rotation
execute if score @s white_timer matches 1 at @s run function white:item/stick/calculate_motion

execute at @s if entity @e[type=!#minecraft:not_mob, type=!player, distance=..2] run function white:item/stick/stick_attack
execute at @s unless block ~ ~-0.1 ~ #white:passable run execute as @s at @s run particle block_crumble{block_state:"minecraft:oak_wood"} ~ ~ ~ 0.8 0.8 0.8 0.5 20
execute at @s unless block ~ ~-0.1 ~ #white:passable run function white:item/stick/stick_attack

execute if score @s white_timer matches 100.. run kill @s