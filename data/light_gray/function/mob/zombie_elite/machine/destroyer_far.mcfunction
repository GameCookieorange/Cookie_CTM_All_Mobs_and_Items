scoreboard players add @s light_gray_timer 1

execute if score @s light_gray_timer matches 2 at @s facing entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..26, sort=nearest, limit=1] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s light_gray_timer matches 2 run function light_gray:mob/zombie_elite/machine/calculate_motion_jump_long

execute unless block ~ ~-0.5 ~ #minecraft:passable run function light_gray:mob/zombie_elite/machine/ground_impact

execute if score @s light_gray_timer matches 100.. run kill @s