scoreboard players add @s gray_timer 1

execute if score @s gray_timer matches 20..130 run particle snowflake ~ ~1 ~ 1.2 1.2 1.2 0.02 2 normal

execute if score @s gray_timer matches 20..130 run execute as @a[distance=..4.5] run execute at @s run damage @s 2 minecraft:freeze

execute if score @s gray_timer matches 75 at @s run effect give @s minecraft:glowing 4 1 true

execute if score @s gray_timer matches 75 at @s run playsound minecraft:entity.breeze.idle_air hostile @a ~ ~ ~ 0.8 0.9

# ========================================

execute if score @s gray_timer matches 80..130 at @s run tp @s ^ ^ ^ ~30 ~
execute if score @s gray_timer matches 80..130 at @s run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.4 3

# ========================================

execute if score @s gray_timer matches 70..130 run particle dust_color_transition{from_color:[0.000,1.000,1.000],to_color:[0.871,0.933,1.000],scale:1} ~ ~1 ~ 0.2 2 0.2 2 20

execute if score @s gray_timer matches 75 run tag @s add gray.current_center

execute if score @s gray_timer matches 80..130 at @s as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=5..10] at @s facing entity @e[tag=gray.current_center,limit=1,distance=5..10] feet rotated ~ 0 positioned ^ ^ ^0.05 if block ^ ^ ^0.5 #gray:passable run tp @s ^ ^ ^

execute if score @s gray_timer matches 80..130 at @s as @e[type=!#not_mob, team=!gray_cloud_mobs, tag=!gray.cyclone, tag=!gray.wind_stray_sniper, tag=!gray.summoner_wither_skeleton, tag=!gray.wind_squatter, tag=!gray.firmament_soul_lord ,tag=!gray.summoner_wither_skeleton_elite, distance=0..5] at @s facing entity @e[tag=gray.current_center,limit=1,distance=0..5] feet rotated ~ 0 positioned ^ ^ ^0.1 if block ^ ^ ^0.5 #gray:passable run tp @s ^ ^ ^

execute if score @s gray_timer matches 130 run tag @s remove gray.current_center

# ==============================================================


execute if score @s gray_timer matches 80..130 as @e[type=#throwable_or_projectile, distance=..7, tag=!gray.moved_projectile] at @s run execute if block ~ ~0.1 ~ #gray:passable run function gray:mob/creeper/stop_projectile

execute if score @s gray_timer matches 130 as @e[type=#throwable_or_projectile, distance=..7] run data modify entity @s NoGravity set value false
execute if score @s gray_timer matches 130 as @e[type=#throwable_or_projectile, distance=..7, tag=!gray.moved_projectile] at @s run tag @s add gray.moved_projectile


# ==============================================================

execute if score @s gray_timer matches 200 run scoreboard players set @s gray_timer 0

execute if score @s gray_timer matches 20 at @s run playsound entity.breeze.idle_air hostile @a ~ ~ ~ 1 0.6
execute if score @s gray_timer matches 80 at @s run playsound entity.breeze.idle_air hostile @a ~ ~ ~ 1 0.3
execute if score @s gray_timer matches 150 at @s run playsound entity.breeze.idle_air hostile @a ~ ~ ~ 1 1.5

# ========================================

scoreboard players add @s gray_debug 1

execute if score @s gray_debug matches 1200.. run data merge entity @s {ignited:1b,Fuse:20}

execute if score @s gray_debug matches 1400.. run scoreboard players set @s gray_debug 0 

kill @e[type=wind_charge, distance=..1.5]

# ========================================

scoreboard players add @s gray_creeper_timer 1

execute if score @s gray_creeper_timer matches 2 unless score @s gray_timer matches 80..130 run tp @s ~ ~-0.05 ~

execute if score @s gray_creeper_timer matches 2 run scoreboard players set @s gray_creeper_timer 0

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:4,MaxNearbyEntities:2,RequiredPlayerRange:30,Delay:1,MinSpawnDelay:400,MaxSpawnDelay:500,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",DeathLootTable:"minecraft:empty",Team:"gray_falling_creeper",Silent:1b,OnGround:1b,Glowing:1b,NoGravity:1b,PersistenceRequired:0b,Health:8f,powered:1b,ExplosionRadius:1b,Fuse:40,Tags:["gray.cold_charge_creeper","gray.cyclone"],CustomName:{"bold":true,"color":"#b9b7b7","shadow_color":-10977079,"translate":"寒凍氣旋"},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2000,show_particles:0b}],equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{"blast_protection":10}}}},drop_chances:{head:0.000},attributes:[{id:"minecraft:max_health",base:8f},{id:"minecraft:attack_damage",base:0.5},{id:"minecraft:follow_range",base:16},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:movement_speed",base:0},{id:"minecraft:safe_fall_distance",base:999}]}},weight:1}]}] 1