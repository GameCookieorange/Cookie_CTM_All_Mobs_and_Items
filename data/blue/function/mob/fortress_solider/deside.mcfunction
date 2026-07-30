execute store result score @s blue_number_value run random value 0..4

execute if score @s blue_number_value matches 0 as @e[tag=blue.garrison, sort=nearest, limit=3, distance=..10] run function blue:mob/fortress_solider/move/calculate_motion_1
execute if score @s blue_number_value matches 1 as @e[tag=blue.garrison, sort=nearest, limit=3, distance=..10] run function blue:mob/fortress_solider/move/calculate_motion_2
execute if score @s blue_number_value matches 2 as @e[tag=blue.garrison, sort=nearest, limit=3, distance=..10] run function blue:mob/fortress_solider/move/calculate_motion_3
execute if score @s blue_number_value matches 3 as @e[tag=blue.garrison, sort=nearest, limit=3, distance=..10] run function blue:mob/fortress_solider/move/calculate_motion_4
execute if score @s blue_number_value matches 4 as @e[tag=blue.garrison, sort=nearest, limit=3, distance=..10] run function blue:mob/fortress_solider/move/calculate_motion_5


scoreboard players reset @s blue_number_value