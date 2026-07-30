scoreboard players add @s cyan_timer 1

execute if score @s cyan_timer matches 10 run function cyan:mob/void/change

execute if score @s cyan_timer matches 20.. run scoreboard players set @s cyan_timer 0

execute as @a[distance=..5] run effect give @s wither 3 0 false

particle dust_color_transition{from_color:[0.086,0.012,0.098],to_color:[0.000,0.000,0.000],scale:2.5} ~ ~ ~ 1 1 1 0 2 normal

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:4,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1800,MaxSpawnDelay:2200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},equipment:{slot_drop_chances:{feet:0,legs:0,chest:0,head:0,body:0}},entity:{id:"minecraft:zombie",PersistenceRequired:1b,Health:44f,IsBaby:0b,CanBreakDoors:1b,DrownedConversionTime:-1,Tags:["cyan.void","cyan.space_creature"],CustomName:{"bold":true,"color":"#32D1BC","italic":false,"shadow_color":-12237499,"translate":"**虛無**"},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":13858,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:snout"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":655360,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:sentry"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":2112301,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"}}},head:{id:"minecraft:black_concrete_powder",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:armor",base:2},{id:"minecraft:attack_damage",base:6.5},{id:"minecraft:attack_knockback",base:1.5},{id:"minecraft:max_health",base:44},{id:"minecraft:movement_speed",base:0.2}]}},weight:1}]}] 1