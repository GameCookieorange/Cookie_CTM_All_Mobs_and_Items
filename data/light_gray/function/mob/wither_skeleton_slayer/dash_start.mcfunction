execute as @e[tag=light_gray.dash_point,limit=1] run data modify entity @s Pos set from entity @s Pos

execute as @e[tag=light_gray.dash_point,limit=1] store result score @s light_gray_pos.x run data get entity @s Pos[0] 100
execute as @e[tag=light_gray.dash_point,limit=1] store result score @s light_gray_pos.y run data get entity @s Pos[1] 100
execute as @e[tag=light_gray.dash_point,limit=1] store result score @s light_gray_pos.z run data get entity @s Pos[2] 100

execute store result entity @s data.x double 0.01 run scoreboard players get @e[tag=light_gray.dash_point,limit=1] light_gray_pos.x
execute store result entity @s data.y double 0.01 run scoreboard players get @e[tag=light_gray.dash_point,limit=1] light_gray_pos.y
execute store result entity @s data.z double 0.01 run scoreboard players get @e[tag=light_gray.dash_point,limit=1] light_gray_pos.z

# 除錯：看到門代表座標成功存入怪物體內 
# give @a acacia_door