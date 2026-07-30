execute as @s store result score @s light_blue_position_x run data get entity @s Pos[0] 1000
execute as @s store result score @s light_blue_number_value run random value -3000..3000
scoreboard players operation @s light_blue_position_x += @s light_blue_number_value
execute as @s store result entity @s Pos[0] double 0.001 run scoreboard players get @s light_blue_position_x


execute as @s store result score @s light_blue_position_y run data get entity @s Pos[1] 1000
execute as @s store result score @s light_blue_number_value run random value -3000..3000
scoreboard players operation @s light_blue_position_y += @s light_blue_number_value
execute as @s store result entity @s Pos[1] double 0.001 run scoreboard players get @s light_blue_position_y


execute as @s store result score @s light_blue_position_z run data get entity @s Pos[2] 1000
execute as @s store result score @s light_blue_number_value run random value -3000..3000
scoreboard players operation @s light_blue_position_z += @s light_blue_number_value
execute as @s store result entity @s Pos[2] double 0.001 run scoreboard players get @s light_blue_position_z
