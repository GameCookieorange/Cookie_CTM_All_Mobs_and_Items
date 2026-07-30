execute as @e[tag=gray.wind_phantom, type=phantom] at @s run function gray:mob/phantom_wind/phantom_ini
execute as @e[tag=gray.warm_phantom, type=phantom] at @s run function gray:mob/phantom_warm/phantom_ini
execute as @e[tag=gray.cold_phantom, type=phantom] at @s run function gray:mob/phantom_cold/phantom_ini

execute as @e[tag=gray.wind_silverfish] at @s run function gray:mob/silverfish/silverfish_ini
execute as @e[tag=gray.warm_silverfish] at @s run function gray:mob/silverfish/silverfish_warm_ini
execute as @e[tag=gray.cold_silverfish] at @s run function gray:mob/silverfish/silverfish_cold_ini

execute as @e[tag=gray.surge_spirit] at @s run function gray:mob/zombie/zombie_ini

execute as @e[tag=gray.cloud_skeleton] at @s run function gray:mob/skeleton/skeleton_ini

execute as @e[tag=gray.summoner_wither_skeleton_elite, type=wither_skeleton] at @s run function gray:mob/summoner_elite/wither_skeleton_elite_ini
execute as @e[tag=gray.summoner_wither_skeleton, type=wither_skeleton] at @s run function gray:mob/summoner/wither_skeleton_ini
execute as @e[tag=gray.wind_weak_phantom] at @s run function gray:mob/summoner/phantom_ini

execute as @e[type=stray, tag=gray.wind_stray_sniper] at @s run function gray:mob/stray_sniper/stray_sniper_ini
execute as @e[type=marker, tag=gray.sniper_marker] at @s run function gray:mob/stray_sniper/aimed_marker

execute as @e[tag=gray.wind_charge_creeper] at @s run function gray:mob/creeper/creeper_ini
execute as @e[tag=gray.warm_charge_creeper] at @s run function gray:mob/creeper/creeper_floating_ini
execute as @e[tag=gray.cold_charge_creeper] at @s run function gray:mob/creeper/creeper_falling_ini

execute as @e[tag=gray.wind_squatter] at @s run function gray:mob/husk/husk_ini

execute as @e[tag=gray.firmament_soul_lord] at @s run function gray:mob/zombie_elite/zombie_ini
execute as @a[scores={gray_player_death=1..}] at @s run function gray:mob/zombie_elite/death_processer/player_death_counter


execute as @e[tag=gray.stop_projectile, type=#throwable_or_projectile, tag=!gray.moved_projectile] run function gray:mob/creeper/reset