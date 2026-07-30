execute store result score @s magenta_number_value run random value 1..5

execute if score @s magenta_number_value matches 1 run function magenta:steam_man/calculate_motion_1
execute if score @s magenta_number_value matches 2 run function magenta:steam_man/calculate_motion_2
execute if score @s magenta_number_value matches 3 run function magenta:steam_man/calculate_motion_3
execute if score @s magenta_number_value matches 4 run function magenta:steam_man/calculate_motion_4
execute if score @s magenta_number_value matches 5 run function magenta:steam_man/calculate_motion_5


