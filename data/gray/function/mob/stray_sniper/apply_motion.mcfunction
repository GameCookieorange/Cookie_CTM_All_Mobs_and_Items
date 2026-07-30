# tag @s add motion_added
# say hello

scoreboard players remove #gray_sniper_end_y gray_value_number 1900

scoreboard players operation #gray_sniper_end_x gray_value_number -= #gray_sniper_start_x gray_value_number
scoreboard players operation #gray_sniper_end_y gray_value_number -= #gray_sniper_start_y gray_value_number
scoreboard players operation #gray_sniper_end_z gray_value_number -= #gray_sniper_start_z gray_value_number

# 將計算結果轉存回 Storage，並設定速度倍率 (例如 0.001 代表原始速度，0.002 代表兩倍速)
# 這裡使用 0.0001 是因為先前放大了 1000 倍，所以 0.0001 等於實際速度 0.1 格/tick
execute store result storage gray:gray_temp motion.x double 0.00004 run scoreboard players get #gray_sniper_end_x gray_value_number
execute store result storage gray:gray_temp motion.y double 0.00004 run scoreboard players get #gray_sniper_end_y gray_value_number
execute store result storage gray:gray_temp motion.z double 0.00004 run scoreboard players get #gray_sniper_end_z gray_value_number

# tp @e[tag=gray.sniper_rocket, tag=!motion_added, limit=1, sort=nearest] ^ ^ ^ facing entity @e[type=#minecraft:attack_entity, limit=1, sort=nearest] eyes

# 讓最近的那枚還沒處理過的煙火執行 Macro 
execute as @e[tag=gray.sniper_rocket, tag=!motion_added, limit=1, sort=nearest] run function gray:mob/stray_sniper/set_final_motion with storage gray:gray_temp motion

execute as @e[tag=gray.sniper_rocket, tag=!motion_added, limit=1, sort=nearest] run tag @s add motion_added


