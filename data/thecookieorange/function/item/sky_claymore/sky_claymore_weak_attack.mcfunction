execute as @s[tag=orange_sky_claymore_charging] at @s[tag=orange_sky_claymore_charging] rotated ~ ~ run summon marker ^ ^1.25 ^2 {Tags:["sky_wave","sky_wave_weak","new"]}
execute as @e[tag=new] run data modify entity @s Rotation set from entity @p[tag=orange_sky_claymore_charging] Rotation
execute as @e[tag=new] at @s run tp @s ~ ~ ~ ~ ~ 

tag @e[tag=new] remove new

# ===============================================================

execute at @s run playsound cookieorange_res:custom.sky_claymore_hit ambient @s ~ ~ ~ 0.2 1

scoreboard players set @s orange_sky_claymore_cd -100
scoreboard players set @s orange_sky_claymore_attack 0 
tag @s remove orange_sky_claymore_charging



