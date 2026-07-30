scoreboard players add @s light_gray_timer 1

execute if score @s light_gray_timer matches 20 run execute unless entity @e[type=#minecraft:attack_entity, distance=..24] run scoreboard players set @s light_gray_timer 0
execute if score @s light_gray_timer matches 20 run execute if entity @e[type=#minecraft:attack_entity, distance=..24] run scoreboard players set @s light_gray_timer 25

execute if score @s light_gray_timer matches 40..140 run particle soul_fire_flame ^0.2 ^2.1 ^0.6 0 0 0 0.001 1

execute if score @s light_gray_timer matches 40..140 run particle soul_fire_flame ^-0.2 ^2.1 ^0.6 0 0 0 0.001 1

execute if score @s light_gray_timer matches 141..180 run particle flame ^0.2 ^2.1 ^0.6 0 0 0 0.001 1

execute if score @s light_gray_timer matches 141..180 run particle flame ^-0.2 ^2.1 ^0.6 0 0 0 0.001 1

execute if score @s light_gray_timer matches 140 run effect give @s speed 2 16

execute if score @s light_gray_timer matches 140 run effect give @s strength 2 0

execute if score @s light_gray_timer matches 180 run playsound block.fire.extinguish master @a[distance=..12] ~ ~ ~ 1 2

execute if score @s light_gray_timer matches 300.. run scoreboard players set @s light_gray_timer 1
 
# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:1,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:1800,MaxSpawnDelay:2400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:wither_skeleton",OnGround:1b,Silent:0b,PersistenceRequired:1b,Health:50f,Team:"light_gray_machine_team",Motion:[0.0,1.5,0.0],Tags:["light_gray.wither_skeleton.annihilator"],CustomName:{"bold":true,"color":"gray","italic":false,"shadow_color":-9888874,"translate":"**殲滅者**","underlined":true},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:eye"}}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:eye"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:iron",pattern:"minecraft:eye"}}},head:{id:"minecraft:daylight_detector",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:attack_speed",base:2},{id:"minecraft:explosion_knockback_resistance",base:10},{id:"minecraft:knockback_resistance",base:0.4},{id:"minecraft:max_health",base:50},{id:"minecraft:follow_range",base:50},{id:"minecraft:movement_efficiency",base:1},{id:"minecraft:movement_speed",base:0.1},{id:"minecraft:safe_fall_distance",base:60},{id:"minecraft:water_movement_efficiency",base:0.8}]}},weight:1}]}] 1