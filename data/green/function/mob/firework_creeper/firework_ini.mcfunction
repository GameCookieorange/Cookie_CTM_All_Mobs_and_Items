scoreboard players add @s green_timer 1

execute if score @s green_timer matches 160..190 at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 5 normal

execute if score @s green_timer matches 160 run execute store result score @s green_number_value run random value 1..4

execute if score @s green_timer matches 200 if score @s green_number_value matches 2..4 at @s run playsound entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1

execute if score @s green_timer matches 200 if score @s green_number_value matches 2..4 run data merge entity @s {Motion:[0.0, 1.0, 0.0]} 

execute if score @s green_timer matches 200 if score @s green_number_value matches 1 at @s run playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 1

execute if score @s green_timer matches 200..220 if score @s green_number_value matches 1 at @s run particle firework ~ ~ ~ 0.2 0.2 0.2 0.1 5 normal

execute if score @s green_timer matches 200 if score @s green_number_value matches 1 run data merge entity @s {Motion:[0.0, 1.8, 0.0]}

execute if score @s green_timer matches 220 if score @s green_number_value matches 1 at @s run particle explosion ~ ~1 ~ 1.5 1.5 1.5 3 15 normal
execute if score @s green_timer matches 220 if score @s green_number_value matches 1 run data merge entity @s {ignited:1b, Fuse:1}

execute if score @s green_timer matches 300.. run scoreboard players set @s green_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:4,MaxNearbyEntities:14,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:500,MaxSpawnDelay:600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Team:"green.party_creeper",Health:40f,powered:1b,ExplosionRadius:2b,Fuse:30,Motion:[0.0,1.0,0.0],Tags:["green.firework_creeper"],CustomName:{"bold":true,"color":"#38C241","italic":false,"shadow_color":-8460640,"text":"煙火苦力怕","underlined":false},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{"feather_falling":10}}}},drop_chances:{feet:0.000},attributes:[{id:"minecraft:attack_damage",base:20},{id:"minecraft:max_health",base:40},{id:"minecraft:scale",base:0.8}]}},weight:1}]}] 1