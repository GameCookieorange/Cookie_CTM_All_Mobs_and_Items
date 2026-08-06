# 1. 基礎計時與粒子
scoreboard players add @s gray_timer 1
execute if score @s gray_timer matches ..15 run particle minecraft:cloud ~ ~1 ~ 1 1 1 0 20 force

execute if score @s gray_timer matches 10..15 at @s unless entity @e[type=!#not_mob, team=!gray_cloud_mobs,  tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..40] run scoreboard players set @s gray_timer 10
execute if score @s gray_timer matches 10..15 at @s if entity @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..40] run scoreboard players set @s gray_timer 20

execute if score @s gray_timer matches 40 run playsound minecraft:entity.wandering_trader.reappeared hostile @a ~ ~ ~ 1 1.5
execute if score @s gray_timer matches 40 run effect give @s minecraft:glowing 3 1 true

execute if score @s gray_timer matches 26..100 at @s run tp @s ^ ^ ^ facing entity @e[type=!#not_mob, team=!gray_cloud_mobs,  tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=..50, limit=1, sort=nearest] feet

execute if score @s gray_timer matches 26..90 run summon marker ^ ^1 ^ {Tags:["gray.sniper_marker"]}

execute if score @s gray_timer matches 40..90 run particle minecraft:cloud ^ ^3 ^1 0.1 0.1 0.1 0.001 5 force

execute if score @s gray_timer matches 100 run summon firework_rocket ^ ^2.5 ^1.5 {Tags:["gray.sniper_rocket"], ShotAtAngle:1b, Life:0, LifeTime:60, FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:false,has_trail:false,colors:[I;13092807],fade_colors:[I;8882055]}]}}}}

execute if score @s gray_timer matches 100 run function gray:mob/stray_sniper/calculate_motion

execute if score @s gray_timer matches 300.. run scoreboard players set @s gray_timer -40

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:1,RequiredPlayerRange:45,Delay:1,MinSpawnDelay:1500,MaxSpawnDelay:1800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:stray",PersistenceRequired:1b,OnGround:1b,Health:18f,Tags:["gray.wind_stray_sniper"],CustomName:{"bold":true,"color":"#c5c5c5","shadow_color":-9857885,"translate":"☁*霧霾狙擊手*☁"},equipment:{chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:eye"},"minecraft:enchantments":{"blast_protection":10}}},head:{id:"minecraft:oxidized_copper_grate",count:1},mainhand:{id:"minecraft:crossbow",count:1},offhand:{id:"minecraft:firework_rocket",count:4, components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;13092807],fade_colors:[I;8882055]}]}}}},drop_chances:{chest:0.000,head:0.000,mainhand:0.000,offhand:1.000},attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:explosion_knockback_resistance",base:0.9},{id:"minecraft:follow_range",base:46},{id:"minecraft:knockback_resistance",base:0.7},{id:"minecraft:movement_speed",base:0.05},{id:"max_health",base:18}]}},weight:1}]}] 1