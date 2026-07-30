scoreboard players add @s white_timer 1

execute if score @s white_timer matches 2 run execute at @s run tp @s ^ ^ ^ facing entity @e[distance=..20, sort=nearest, team=!white_forest_creature, type=!#minecraft:not_mob, limit=1] eyes

execute if score @s white_timer matches 2 at @s run function white:mob/dusk_dweller/calculate_motion

execute at @s if entity @e[team=!white_forest_creature, type=!#minecraft:not_mob, distance=..2] run function white:mob/dusk_dweller/stick_attack

execute at @s unless block ~ ~-0.1 ~ #white:passable run execute as @s at @s run particle block_crumble{block_state:"minecraft:oak_wood"} ~ ~ ~ 0.8 0.8 0.8 0.5 20

execute at @s unless block ~ ~-0.1 ~ #white:passable run function white:mob/dusk_dweller/stick_attack

execute if score @s white_timer matches 100.. run kill @s

