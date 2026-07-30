# scoreboard players add @s light_green_timer 1
# scoreboard players add @s light_gray_debug 1

execute if predicate light_green:stomper_on_ground run execute if entity @s[tag=ground_attack] run function light_green:mob/stomper/ground_pound_remove

execute unless predicate light_green:stomper_on_ground run particle minecraft:dust_pillar{block_state:"minecraft:slime_block"} ~ ~ ~ 1 0 1 0.5 10

execute unless predicate light_green:stomper_on_ground if entity @s[tag=!ground_attack] if block ~ ~-1 ~ #minecraft:air if block ~ ~-2 ~ #minecraft:air if block ~ ~-3 ~ #minecraft:air if block ~ ~-5 ~ #minecraft:air if block ~ ~-4 ~ #minecraft:air if block ~ ~-6 ~ #minecraft:air if block ~ ~-7 ~ #minecraft:air if block ~ ~-8 ~ #minecraft:air run function light_green:mob/stomper/ground_pound

# execute if score @s light_green_timer matches 200.. run scoreboard players set @s light_green_timer 1

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:8,RequiredPlayerRange:12,Delay:1,MinSpawnDelay:900,MaxSpawnDelay:1100,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:slime",Silent:0b,Health:20f,Team:"light_green_slime",Size:0,Motion:[0.0,1.0,0.0],Tags:["light_green.stomper_slime"],CustomName:{"bold":true,"color":"#70E336","italic":false,"shadow_color":-16239099,"text":"踐踏者","underlined":true},attributes:[{id:"minecraft:attack_damage",base:1},{id:"minecraft:follow_range",base:30},{id:"minecraft:jump_strength",base:2.5},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_efficiency",base:0.4},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:safe_fall_distance",base:200},{id:"minecraft:scale",base:4},{id:"minecraft:water_movement_efficiency",base:0.6}]}},weight:1}]}] 1