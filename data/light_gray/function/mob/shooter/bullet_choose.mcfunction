execute store result score @s light_gray_number_value run random value 0..2

execute if score @s light_gray_number_value matches 0 run tag @s add light_gray.shooter_bullet_0
execute if score @s light_gray_number_value matches 1 run tag @s add light_gray.shooter_bullet_1
execute if score @s light_gray_number_value matches 2 run tag @s add light_gray.shooter_bullet_2

scoreboard players reset @s light_gray_number_value