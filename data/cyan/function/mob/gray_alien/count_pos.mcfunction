execute as @s store result score @s cyan_pos_x run data get entity @s Pos[0] 1000
execute as @s store result score @s cyan_number_value run random value -8000..8000
scoreboard players operation @s cyan_pos_x += @s cyan_number_value
execute as @s store result entity @s Pos[0] double 0.001 run scoreboard players get @s cyan_pos_x


execute as @s store result score @s cyan_pos_y run data get entity @s Pos[1] 1000
execute as @s store result score @s cyan_number_value run random value -2000..7000
scoreboard players operation @s cyan_pos_y += @s cyan_number_value
execute as @s store result entity @s Pos[1] double 0.001 run scoreboard players get @s cyan_pos_y


execute as @s store result score @s cyan_pos_z run data get entity @s Pos[2] 1000
execute as @s store result score @s cyan_number_value run random value -8000..8000
scoreboard players operation @s cyan_pos_z += @s cyan_number_value
execute as @s store result entity @s Pos[2] double 0.001 run scoreboard players get @s cyan_pos_z

# give @a cookie