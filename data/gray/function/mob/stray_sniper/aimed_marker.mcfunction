scoreboard players add @s gray_timer 1

execute if score @s gray_timer matches 0..1 run data modify entity @s Rotation set from entity @e[tag=gray.wind_stray_sniper, type=stray, sort=nearest, limit=1] Rotation 

execute if score @s gray_timer matches 2.. run particle dust_color_transition{from_color:[1.000,0.459,0.098],to_color:[0.702,0.000,0.000],scale:1.5} ~ ~ ~ 0 0 0 0 1 force

execute if score @s gray_timer matches 2.. run tp ^ ^ ^3

execute if entity @e[type=!#not_mob, team=!gray_cloud_mobs,  tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..3] run kill @s

execute if score @s gray_timer matches 60.. run kill @s