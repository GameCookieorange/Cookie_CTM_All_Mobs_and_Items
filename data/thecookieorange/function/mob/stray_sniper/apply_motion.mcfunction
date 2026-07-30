# tag @s add motion_added
# say hello

scoreboard players remove #orange_end_y orange_math 2000

scoreboard players operation #orange_end_x orange_math -= #orange_start_x orange_math
scoreboard players operation #orange_end_y orange_math -= #orange_start_y orange_math
scoreboard players operation #orange_end_z orange_math -= #orange_start_z orange_math

# 將計算結果轉存回 Storage，並設定速度倍率 (例如 0.001 代表原始速度，0.002 代表兩倍速)
# 這裡使用 0.0001 是因為先前放大了 1000 倍，所以 0.0001 等於實際速度 0.1 格/tick
execute store result storage thecookieorange:orange_temp motion.x double 0.00003 run scoreboard players get #orange_end_x orange_math
execute store result storage thecookieorange:orange_temp motion.y double 0.00003 run scoreboard players get #orange_end_y orange_math
execute store result storage thecookieorange:orange_temp motion.z double 0.00003 run scoreboard players get #orange_end_z orange_math

# 關鍵：讓最近的那枚還沒處理過的煙火執行 Macro 
execute as @e[tag=sniper_rocket, tag=!motion_added, limit=1, sort=nearest] run function thecookieorange:mob/stray_sniper/set_final_motion with storage thecookieorange:orange_temp motion

# 標記處理完成，避免重複套用
execute as @e[tag=sniper_rocket, tag=!motion_added, limit=1, sort=nearest] run tag @s add motion_added


