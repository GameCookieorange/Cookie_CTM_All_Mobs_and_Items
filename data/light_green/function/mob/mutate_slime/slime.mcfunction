# scoreboard players add @s light_green_timer 1 

execute at @s run effect give @e[type=#minecraft:attack_entity, distance=..6] weakness 1 3
execute at @s run effect give @e[type=#minecraft:attack_entity, distance=..9] slowness 1 0

execute at @s run particle minecraft:falling_lava ~ ~1 ~ 2.5 2.5 2.5 0.01 10

execute as @e[distance=..6, type=#minecraft:throwable_or_projectile, tag=!light_green.stopped_projectile] at @s run tag @s add light_green.stopped_projectile

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:5,MaxNearbyEntities:10,RequiredPlayerRange:16,Delay:4,MinSpawnDelay:1600,MaxSpawnDelay:2000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:magma_cube",Health:20f,Size:0,Tags:["light_green.mutate_slime"],CustomName:{"bold":true,"color":"#ADE63C","italic":false,"shadow_color":-8893162,"text":"**變異史萊姆**","underlined":true},Team:"light_green_slime",attributes:[{id:"minecraft:attack_damage",base:4.5},{id:"minecraft:jump_strength",base:0.8},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_efficiency",base:1},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:3},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1