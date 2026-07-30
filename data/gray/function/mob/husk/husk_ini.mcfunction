execute if entity @e[distance=..7, team=gray_cloud_mobs] run effect give @s minecraft:resistance 1 3 false
execute if entity @e[distance=..7, team=gray_cloud_mobs] run effect give @s minecraft:strength 1 0 false
execute if entity @e[distance=..7, team=gray_cloud_mobs] run effect give @s minecraft:speed 1 2 false
execute if entity @e[distance=..7, team=gray_cloud_mobs] run execute at @s run particle crit ~ ~1 ~ 0.5 0.5 0.5 1 6

execute if entity @e[distance=..7, tag=gray.cyclone] run effect give @s minecraft:resistance 1 3 false
execute if entity @e[distance=..7, tag=gray.cyclone] run effect give @s minecraft:strength 1 0 false
execute if entity @e[distance=..7, tag=gray.cyclone] run effect give @s minecraft:speed 1 2 false
execute if entity @e[distance=..7, tag=gray.cyclone] run execute at @s run particle crit ~ ~1 ~ 0.5 0.5 0.5 1 6

# give @a cookie

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:3,MaxNearbyEntities:5,RequiredPlayerRange:12,Delay:1,MinSpawnDelay:700,MaxSpawnDelay:1100,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:husk",PersistenceRequired:1b,CanPickUpLoot:0b,Health:34f,CanBreakDoors:1b,Tags:["gray.wind_squatter"],CustomName:{"bold":true,"color":"#746650","italic":false,"shadow_color":-4408132,"translate":"蘊風強佔者"},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":6904401,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:sentry"}}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:iron",pattern:"minecraft:eye"},"minecraft:enchantments":{"protection":1}}},head:{id:"minecraft:crying_obsidian",count:1},mainhand:{id:"minecraft:chest",count:1}},drop_chances:{feet:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:explosion_knockback_resistance",base:0.7},{id:"minecraft:knockback_resistance",base:0.3},{id:"minecraft:max_health",base:34},{id:"minecraft:movement_speed",base:0.15},{id:"minecraft:scale",base:1.2}]}},weight:1}]}] 1