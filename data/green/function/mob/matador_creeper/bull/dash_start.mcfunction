execute as @e[tag=green.dash_point,limit=1] run data modify entity @s Pos set from entity @s Pos

execute as @e[tag=green.dash_point,limit=1] store result score @s green_pos.x run data get entity @s Pos[0] 1000
execute as @e[tag=green.dash_point,limit=1] store result score @s green_pos.z run data get entity @s Pos[2] 1000

execute store result entity @s data.x double 0.001 run scoreboard players get @e[tag=green.dash_point,limit=1] green_pos.x
execute store result entity @s data.z double 0.001 run scoreboard players get @e[tag=green.dash_point,limit=1] green_pos.z

# give @a acacia_doorz