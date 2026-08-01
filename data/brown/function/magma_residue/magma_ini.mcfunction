scoreboard players add @s[nbt={Size:0}] brown_timer 1
particle dripping_lava ~ ~ ~ 0.7 0.6 0.7 0.5 1

execute if score @s brown_timer matches 1.. at @s run particle campfire_cosy_smoke ~ ~ ~ 0.0 0.0 0.0 0.01 1 normal

execute if score @s brown_timer matches 1 at @s run function brown:magma_residue/small_ini

execute if score @s brown_timer matches 1 at @s run effect give @s glowing 200 0 true

execute if score @s brown_timer matches 200 at @s run team leave @s
execute if score @s brown_timer matches 220 at @s run team join brown_steampunk @s
execute if score @s brown_timer matches 240 at @s run team leave @s
execute if score @s brown_timer matches 260 at @s run team join brown_steampunk @s
execute if score @s brown_timer matches 270 at @s run team leave @s
execute if score @s brown_timer matches 280 at @s run team join brown_steampunk @s
execute if score @s brown_timer matches 290 at @s run team leave @s
execute if score @s brown_timer matches 300.. at @s run function brown:magma_residue/explode

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:5,MaxNearbyEntities:5,RequiredPlayerRange:14,Delay:0,MinSpawnDelay:2000,MaxSpawnDelay:2600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:magma_cube",Team:"brown_steampunk",Health:20f,Size:1,wasOnGround:1b,Tags:["brown.magma_residue","brown.steampunk"],Passengers:[{id:"minecraft:marker",Tags:["brown.lava_marker"]}],CustomName:{"bold":true,"color":"#B36427","italic":false,"shadow_color":-46820,"translate":"熔岩殘渣","underlined":true},attributes:[{id:"minecraft:jump_strength",base:0.45},{id:"minecraft:movement_speed",base:0.7},{id:"minecraft:max_health",base:20},{id:"minecraft:scale",base:1.6},{id:"minecraft:attack_damage",base:6}]}},weight:1}]}] 1