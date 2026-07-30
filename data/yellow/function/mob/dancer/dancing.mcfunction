execute store result score @s yellow_number_value run random value 1..4
# scoreboard players set @s yellow_number_value 4


execute if score @s yellow_number_value matches 1 run function yellow:mob/dancer/calculate_motion_1
execute if score @s yellow_number_value matches 2 run function yellow:mob/dancer/calculate_motion_2
execute if score @s yellow_number_value matches 3 run function yellow:mob/dancer/calculate_motion_3


