
# execute if entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..24, predicate=blue:is_in_water] run tp @s ^ ^ ^0.1 facing entity @e[limit=1, sort=nearest, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..24, predicate=blue:is_in_water] feet

execute as @s if entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..16] at @s run tag @s add blue.wandering_missile_find

scoreboard players add @s[tag=blue.wandering_missile_find] blue_debug 1

execute if score @s blue_debug matches 10 run data modify entity @s NoAI set value true

execute if score @s blue_debug matches 1200.. run function blue:mob/glowing_squid/explode
execute as @s[nbt={HurtTime:10s}] at @s run function blue:mob/glowing_squid/explode
execute if entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..4, limit=1, sort=nearest] run function blue:mob/glowing_squid/explode

execute as @s if entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..16] at @s run tp @s ^ ^ ^0.1 facing entity @e[limit=1, sort=nearest, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..16]

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:20,MaxNearbyEntities:10,RequiredPlayerRange:32,Delay:1,MinSpawnDelay:2600,MaxSpawnDelay:3000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:glow_squid",NoGravity:1b,Team:"blue_torpedo",NoAI:0b,Health:50f,Age:1,Tags:["blue.ocean_army","blue.wandering_missile"],CustomName:{"bold":true,"color":"#22DAE0","italic":false,"shadow_color":-14265229,"translate":"遊蕩魚雷","underlined":true},active_effects:[{id:"minecraft:resistance",amplifier:5,duration:20000,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:50}]}},weight:1}]}] 1