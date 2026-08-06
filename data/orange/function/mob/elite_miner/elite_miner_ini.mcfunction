scoreboard players add @s orange_timer 1

execute if score @s orange_timer matches 10..12 unless entity @a[distance=..11] run scoreboard players set @s orange_timer 10

execute if score @s orange_timer matches 10..12 if entity @a[distance=..11] run scoreboard players set @s orange_timer 15

execute if score @s orange_timer matches 40 run function orange:mob/elite_miner/break_area

execute if score @s orange_timer matches 50 run effect clear @s glowing

execute if score @s orange_timer matches 70.. run scoreboard players set @s orange_timer 0


# give @a cookie

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:3,MaxNearbyEntities:18,RequiredPlayerRange:16,Delay:2,MinSpawnDelay:1600,MaxSpawnDelay:2400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",OnGround:1b,PersistenceRequired:1b,Health:32f,IsBaby:0b,CanBreakDoors:1b,InWaterTime:999999,Tags:["orange.mob","orange.elite_miner"],CustomName:{"bold":true,"color":"#F5B658","italic":false,"shadow_color":-4372201,"text":"**礦場挖掘者**","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:wild"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16348960}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":12212753,"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:host"}}},head:{id:"minecraft:iron_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:bolt"}}},mainhand:{id:"minecraft:stone_pickaxe",count:1},offhand:{id:"minecraft:stone",count:4}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.600},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:attack_knockback",base:0.8},{id:"minecraft:explosion_knockback_resistance",base:0.4},{id:"minecraft:follow_range",base:32},{id:"minecraft:max_health",base:32},{id:"minecraft:movement_speed",base:0.18},{id:"minecraft:scale",base:1}]}},weight:1}]}] 1