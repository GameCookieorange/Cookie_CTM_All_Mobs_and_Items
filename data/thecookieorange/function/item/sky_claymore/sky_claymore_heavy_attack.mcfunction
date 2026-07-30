
# 1. 召喚 Marker 並鎖定朝向 
execute as @s[tag=orange_sky_claymore_charging] at @s[tag=orange_sky_claymore_charging] rotated ~ ~ run summon marker ^ ^1.25 ^2 {Tags:["sky_wave","sky_wave_heavy","new"]}
execute as @e[tag=new] run data modify entity @s Rotation set from entity @p[tag=orange_sky_claymore_charging] Rotation
execute as @e[tag=new] at @s run tp @s ~ ~ ~ ~ ~ 

tag @e[tag=new] remove new

# =======================================================

execute at @s run playsound minecraft:entity.wither.shoot player @s ~ ~ ~ 0.5 0.8
execute at @s run playsound cookieorange_res:custom.sky_claymore_hit ambient @s ~ ~ ~ 2 1

scoreboard players set @s orange_sky_claymore_cd -160
scoreboard players set @s orange_sky_claymore_attack 0 
tag @s remove orange_sky_claymore_charging

