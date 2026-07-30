scoreboard players add @s yellow_timer 1

execute store result score @s yellow_number_value run random value 0..4

execute if score @s yellow_timer matches 1 run tp @s ^ ^ ^ facing entity @e[limit=1, sort=random, distance=..14, type=#minecraft:attack_entity] eyes

execute if score @s yellow_timer matches 2 if score @s yellow_number_value matches 0 run function yellow:mob/antlion/random/calculate_motion
execute if score @s yellow_timer matches 2 if score @s yellow_number_value matches 1 run function yellow:mob/antlion/random/calculate_motion_1
execute if score @s yellow_timer matches 2 if score @s yellow_number_value matches 2 run function yellow:mob/antlion/random/calculate_motion_2
execute if score @s yellow_timer matches 2 if score @s yellow_number_value matches 3 run function yellow:mob/antlion/random/calculate_motion_3
execute if score @s yellow_timer matches 2 if score @s yellow_number_value matches 4 run function yellow:mob/antlion/random/calculate_motion_4

execute if entity @e[distance=..2.5, type=!#minecraft:not_mob, tag=!yellow.antlion] at @s run function yellow:mob/antlion/attacking

# execute at @e[distance=..3, tag=yellow.block] at @s run particle dust_color_transition{from_color:[1.000,1.000,0.569],to_color:[1.000,1.000,0.839],scale:1} ~ ~2 ~ 0.2 0.2 0.2 0.1 30 normal

particle dust_color_transition{from_color:[1.000,1.000,0.569],to_color:[1.000,1.000,0.839],scale:1} ~ ~2 ~ 0.2 0.2 0.2 0.1 30 normal

execute unless block ~ ~-0.1 ~ #air run kill @s
execute if score @s yellow_timer matches 60.. run kill @s