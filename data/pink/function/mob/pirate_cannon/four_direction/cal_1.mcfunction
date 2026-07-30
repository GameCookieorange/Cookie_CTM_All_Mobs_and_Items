execute store result score @s pink_pos_x run random value -40..40
execute store result score @s pink_pos_y run random value 20..120
execute store result score @s pink_pos_z run random value -120..-30

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s pink_pos_x
execute store result entity @s Motion[1] double 0.01 run scoreboard players get @s pink_pos_y
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s pink_pos_z

# give @a cookie