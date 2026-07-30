# execute as @e[tag=gray.sniper_rocket, limit=1, sort=nearest] at @s facing entity @e[type=#minecraft:attack_entity, limit=1, sort=nearest] feet as @e[type=stray, limit=1, sort=nearest, tag=gray.wind_stray_sniper] run tp @e[tag=gray.sniper_rocket, limit=1, sort=nearest] ~ ~ ~ ~ ~

execute as @e[tag=gray.sniper_rocket, limit=1, sort=nearest] run data modify entity @s Owner set from entity @e[type=stray, limit=1, sort=nearest, tag=gray.wind_stray_sniper] UUID

execute store result score #gray_sniper_start_x gray_value_number run data get entity @s Pos[0] 1000
execute store result score #gray_sniper_start_y gray_value_number run data get entity @s Pos[1] 1000
execute store result score #gray_sniper_start_z gray_value_number run data get entity @s Pos[2] 1000

# 2. 取得目標 (你預留在玩家位置的 fw_direction) 座標
execute as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..42, limit=1, sort=nearest] store result score #gray_sniper_end_x gray_value_number run data get entity @s Pos[0] 1000
execute as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..42, limit=1, sort=nearest] store result score #gray_sniper_end_y gray_value_number run data get entity @s Pos[1] 1000
execute as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..42, limit=1, sort=nearest] store result score #gray_sniper_end_z gray_value_number run data get entity @s Pos[2] 1000

function gray:mob/stray_sniper/apply_motion