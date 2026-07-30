# 1. 取得起點 (煙火目前位置) 座標並放大 1000 倍存入計分板
execute store result score #orange_start_x orange_math run data get entity @s Pos[0] 1000
execute store result score #orange_start_y orange_math run data get entity @s Pos[1] 1000
execute store result score #orange_start_z orange_math run data get entity @s Pos[2] 1000

# 2. 取得目標 (你預留在玩家位置的 fw_direction) 座標
execute as @e[type=#minecraft:attack_entity, limit=1, sort=nearest] store result score #orange_end_x orange_math run data get entity @s Pos[0] 1000
execute as @e[type=#minecraft:attack_entity, limit=1, sort=nearest] store result score #orange_end_y orange_math run data get entity @s Pos[1] 1000
execute as @e[type=#minecraft:attack_entity, limit=1, sort=nearest] store result score #orange_end_z orange_math run data get entity @s Pos[2] 1000

function thecookieorange:mob/stray_sniper/apply_motion