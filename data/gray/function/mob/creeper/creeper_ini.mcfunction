scoreboard players add @s gray_timer 1

execute if score @s gray_timer matches 75 at @s run playsound minecraft:entity.breeze.idle_air hostile @a ~ ~ ~ 0.8 0.2
execute if score @s gray_timer matches 75 at @s run playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 0.8 0.4
# ========================================

execute if score @s gray_timer matches 80..135 at @s run tp @s ^ ^ ^ ~30 ~

# ========================================

execute if score @s gray_timer matches 60 run effect give @s glowing 4 1 false
execute if score @s gray_timer matches 70 run tag @s add gray.current_center

execute if score @s gray_timer matches 60..140 at @s run particle minecraft:cloud ~ ~1 ~ 0.2 0.2 0.2 0.2 2 normal
execute if score @s gray_timer matches 60..140 run particle minecraft:firework ~ ~1 ~ 0 3 0 0.01 4

execute if score @s gray_timer matches 80..140 at @s as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=8..12] at @s facing entity @e[tag=gray.current_center,limit=1,distance=10..15] feet rotated ~ 0 positioned ^ ^ ^0.03 if block ^ ^ ^0.5 #gray:passable run tp @s ^ ^ ^

execute if score @s gray_timer matches 80..140 at @s as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=4..8] at @s facing entity @e[tag=gray.current_center,limit=1,distance=5..10] feet rotated ~ 0 positioned ^ ^ ^0.06 if block ^ ^ ^0.5 #gray:passable run tp @s ^ ^ ^

execute if score @s gray_timer matches 80..140 at @s as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=0..4] at @s facing entity @e[tag=gray.current_center,limit=1,distance=0..5] feet rotated ~ 0 positioned ^ ^ ^0.09 if block ^ ^ ^0.5 #gray:passable run tp @s ^ ^ ^

# ==============================================================

execute if score @s gray_timer matches 80..140 as @e[type=#throwable_or_projectile, distance=..7, tag=!gray.moved_projectile] at @s run execute if block ~ ~0.1 ~ #gray:passable run function gray:mob/creeper/stop_projectile

execute if score @s gray_timer matches 140 as @e[type=#throwable_or_projectile, distance=..7] run data modify entity @s NoGravity set value false
execute if score @s gray_timer matches 140 as @e[type=#throwable_or_projectile, distance=..7, tag=!gray.moved_projectile] at @s run tag @s add gray.moved_projectile


# ==============================================================
execute if score @s gray_timer matches 140 run tag @s remove gray.current_center


execute if score @s gray_timer matches 140 at @s run playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 0.8 1

execute if score @s gray_timer matches 230 at @s run playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 0.8 0.7

execute if score @s gray_timer matches 260 run scoreboard players set @s gray_timer 0

# ========================================

scoreboard players add @s gray_debug 1

execute if score @s gray_debug matches 1500.. run data merge entity @s {ignited:1b,Fuse:20}

execute if score @s gray_debug matches 1600.. run scoreboard players set @s gray_debug 0 

kill @e[type=wind_charge, distance=..1.5]

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:4,MaxNearbyEntities:6,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:700,MaxSpawnDelay:900,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",DeathLootTable:"minecraft:empty",Team:"gray_cloud_mobs",Silent:1b,OnGround:1b,PersistenceRequired:0b,Health:24,powered:1b,ExplosionRadius:1b,Fuse:25,Tags:["gray.wind_charge_creeper","gray.cyclone"],CustomName:{"bold":true,"color":"#b0b0b0","shadow_color":-9737365,"translate":"易變氣旋"},equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{"blast_protection":10}}}},drop_chances:{head:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2000,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:24},{id:"minecraft:attack_damage",base:4},{id:"minecraft:follow_range",base:20},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:movement_speed",base:0.23},{id:"minecraft:safe_fall_distance",base:999}]}},weight:1}]}] 1
