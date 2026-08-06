execute at @s run particle falling_dust{block_state:"minecraft:sand"} ~ ~0.5 ~ 0.2 0.2 0.2 0.1 3

effect give @s invisibility 1 0 true

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:10,MaxNearbyEntities:10,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:parched",OnGround:1b,Health:10f,Tags:["magenta.mob","magenta.desert_shadow"],CustomName:{"bold":true,"color":"light_purple","italic":false,"shadow_color":-11930,"text":"沙漠殘影","underlined":true},attributes:[{id:"minecraft:armor",base:2},{id:"minecraft:attack_damage",base:3.5},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:0.12}]}},weight:1}]}] 1


# yellow

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:11,MaxNearbyEntities:10,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:parched",OnGround:1b,Health:16f,Tags:["magenta.mob","magenta.desert_shadow"],CustomName:{"bold":true,"color":"yellow","italic":false,"shadow_color":-3371717,"text":"沙漠殘影","underlined":true},attributes:[{id:"minecraft:armor",base:4},{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.14}]}},weight:1}]}] 1