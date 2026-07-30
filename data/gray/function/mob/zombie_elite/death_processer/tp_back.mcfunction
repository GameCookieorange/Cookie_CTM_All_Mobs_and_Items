effect give @s resistance 2 10 false
effect give @s slow_falling 10 10 false


tp @s @e[type=!#not_mob, tag=!gray.cyclone,  team=!gray_cloud_mobs, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, limit=1, sort=nearest, distance=5..80, tag=!gray.player_death]

execute at @s run playsound entity.ravager.celebrate hostile @a ~ ~ ~ 0.8 0.6
execute at @s run particle ash ~ ~1 ~ 0.5 0.5 0.5 0.5 100 normal
execute at @s run particle cloud ~ ~1 ~ 0.2 0.2 0.2 0.3 20 normal
execute at @s run playsound entity.zombie.hurt hostile @a ~ ~ ~ 0.8 0.6