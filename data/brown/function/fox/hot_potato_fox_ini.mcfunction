scoreboard players add @s brown_debug 1

execute if score @s brown_debug matches 10..15 if entity @p[distance=..14] run scoreboard players set @s brown_debug 16
execute if score @s brown_debug matches 10..15 unless entity @p[distance=..14] run scoreboard players set @s brown_debug 10

execute if score @s brown_debug matches 1..20 run effect give @s glowing 1 1 true

execute if score @s brown_debug matches 1..20 at @s run particle smoke ~ ~0.5 ~ 0.8 0.8 0.8 0 10 normal

execute if score @s brown_debug matches 40 run function brown:fox/give

execute if score @s brown_debug matches 2000.. run kill @s

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:10,MaxNearbyEntities:1,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:4000,MaxSpawnDelay:5000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:fox",Team:"brown_steampunk",Health:20f,Type:"red",Tags:["brown.hot_potato_fox","brown.steampunk"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:scale",base:1.5}]}},weight:1}]}] 1