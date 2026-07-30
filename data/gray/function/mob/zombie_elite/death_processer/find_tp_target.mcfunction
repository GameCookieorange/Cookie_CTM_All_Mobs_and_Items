

execute if entity @e[type=!#not_mob, tag=!gray.cyclone, team=!gray_cloud_mobs, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, limit=1, sort=nearest, distance=5..80, tag=!gray.player_death] run function gray:mob/zombie_elite/death_processer/tp_back


# give @a cookie
