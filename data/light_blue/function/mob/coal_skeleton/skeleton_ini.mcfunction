effect clear @s slowness

execute if score @s light_blue_ice_level matches 1.. run function light_blue:mob/coal_skeleton/ice_clear

advancement revoke @s only light_blue:mobs/ice_clear

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:4,MaxNearbyEntities:10,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:900,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:wither_skeleton",Health:12f,Tags:["light_blue.coal_skeleton"],CustomName:{"bold":true,"color":"#468399","italic":false,"shadow_color":-8930625,"text":"煤炭骷髏","underlined":true},attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:max_health",base:12},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:scale",base:0.8}]}},weight:1}]}] 1

