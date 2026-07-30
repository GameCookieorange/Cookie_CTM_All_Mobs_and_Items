execute if score @s yellow_timer matches 5 run execute if block ~ ~ ~ minecraft:water run damage @s 30
execute if score @s yellow_timer matches 5 run execute if block ~ ~ ~ minecraft:lava run damage @s 30

execute if entity @e[type=snowball, distance=..2] run damage @s 30
execute if entity @e[type=lightning_bolt, distance=..6] run damage @s 200

execute if score @s yellow_timer matches 5 if predicate yellow:burning/on_fire run damage @s 30
execute if score @s yellow_timer matches 5 if predicate yellow:raining/in_rain run damage @s 30

scoreboard players add @s yellow_timer 1
execute if score @s yellow_timer matches 10.. run scoreboard players set @s yellow_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:8,SpawnRange:7,MaxNearbyEntities:16,RequiredPlayerRange:12,Delay:1,MinSpawnDelay:400,MaxSpawnDelay:500,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:parched",Health:100f,Tags:["yellow.gibdo"],CustomName:{"bold":true,"color":"#BF8218","italic":false,"shadow_color":-6711741,"text":"吉波德","underlined":false},data:yellow.gibdo,equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:mangrove_roots",count:1},mainhand:{id:"minecraft:stick",count:1},offhand:{id:"minecraft:bone_meal",count:1}},drop_chances:{head:0.000,mainhand:0.000,offhand:0.500},active_effects:[{id:"minecraft:regeneration",amplifier:1,duration:999999,show_particles:0b},{id:"minecraft:resistance",amplifier:1,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:3.5},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:knockback_resistance",base:0.6},{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.12}]}},weight:1}]}] 1