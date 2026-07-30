particle minecraft:firefly ~ ~ ~ 1 1 1 2 3

scoreboard players add @s gray_timer 1

execute if score @s gray_timer matches 10..15 run execute if entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..14, limit=1, sort=nearest] run scoreboard players set @s gray_timer 16

execute if score @s gray_timer matches 10..15 run execute unless entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..14, limit=1, sort=nearest] run scoreboard players set @s gray_timer 10

execute if score @s gray_timer matches 20 run effect give @s minecraft:glowing 4 1 true

execute if score @s gray_timer matches 45 at @s facing entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..40, limit=1, sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s gray_timer matches 60 at @s facing entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..40, limit=1, sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s gray_timer matches 86 at @s facing entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..40, limit=1, sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s gray_timer matches 100 at @s facing entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..40, limit=1, sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

# ======================================================

execute if score @s gray_timer matches 46 at @s run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1.5

execute if score @s gray_timer matches 46 run function gray:mob/zombie_elite/calculate_motion_jump

execute if score @s gray_timer matches 60 run function gray:mob/zombie_elite/calculate_motion

execute if score @s gray_timer matches 70 at @s run playsound cookieorange_res:custom.sky_claymore_hit hostile @a ~ ~ ~ 0.6 1.2

execute if score @s gray_timer matches 70 at @s run particle minecraft:sweep_attack ~ ~1 ~ 2 2 2 1 10 normal

execute if score @s gray_timer matches 70 run execute as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..3] at @s run damage @s 4 mob_attack by @n[tag=gray.firmament_soul_lord, type=zombie, limit=1, sort=nearest]

# ======================================================

execute if score @s gray_timer matches 72 at @s facing entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..40, limit=1, sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s gray_timer matches 76 run function gray:mob/zombie_elite/back

execute if score @s gray_timer matches 80 run function gray:mob/zombie_elite/back

execute if score @s gray_timer matches 86 at @s run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1.5

execute if score @s gray_timer matches 86 run function gray:mob/zombie_elite/calculate_motion_jump_2

execute if score @s gray_timer matches 100 run function gray:mob/zombie_elite/calculate_motion_2

execute if score @s gray_timer matches 110 at @s run playsound cookieorange_res:custom.sky_claymore_hit hostile @a ~ ~ ~ 0.6 0.5


execute if score @s gray_timer matches 110..111 at @s run particle minecraft:sweep_attack ~ ~1 ~ 2 2 2 1 10 normal

execute if score @s gray_timer matches 110 run execute as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..4.5] at @s run damage @s 6 mob_attack by @n[tag=gray.firmament_soul_lord, type=zombie, limit=1, sort=nearest]

# =====================================================


execute if score @s gray_timer matches 220.. run scoreboard players set @s gray_timer 0


execute unless entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..60, limit=1, sort=nearest, tag=!gray.player_death] run function gray:mob/zombie_elite/death_processer/find_tp_target

# ======================================================

scoreboard players add @s gray_debug 1

execute if score @s gray_debug matches 10 as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..80, limit=1, sort=nearest, tag=!gray.player_death] at @s run particle crit ~ ~ ~ 0.3 0.1 0.3 0.75 20 normal

execute if score @s gray_debug matches 20.. run scoreboard players set @s gray_debug 0


# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:4,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:2000,MaxSpawnDelay:3000,SpawnData:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",DeathLootTable:"gray:mobs/elite_zombie",PersistenceRequired:1b,Health:60f,Team:"gray_firmament_soul_lord",InWaterTime:-1,Tags:["gray.firmament_soul_lord"],CustomName:{"bold":true,"color":"#9a4897","italic":false,"shadow_color":-1764305194,"translate":"***蒼天亡靈領主***","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":6888990,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:silence"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:dyed_color":5321512,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:silence"}}},head:{id:"minecraft:gray_banner",count:1},mainhand:{id:"minecraft:iron_spear",count:1},offhand:{id:"minecraft:totem_of_undying",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:hero_of_the_village",amplifier:100,duration:60000,show_particles:1b}],attributes:[{id:"safe_fall_distance",base:200},{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:60},{id:"minecraft:movement_speed",base:0.28},{id:"minecraft:knockback_resistance",base:0.4}]}}}] 1