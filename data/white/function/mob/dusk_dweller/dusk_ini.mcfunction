scoreboard players add @s white_timer 1

execute if score @s white_timer matches 20..21 run execute unless entity @e[team=!white_forest_creature, type=!#minecraft:not_mob, distance=..14] run scoreboard players set @s white_timer 0
execute if score @s white_timer matches 20..21 run execute if entity @e[team=!white_forest_creature, type=!#minecraft:not_mob, distance=..14] run scoreboard players set @s white_timer 25

execute if score @s white_timer matches 40 run effect give @s glowing 1 0 true

execute if score @s white_timer matches 55..65 run tp @s ^ ^ ^ facing entity @e[team=!white_forest_creature, type=!#minecraft:not_mob, distance=..20, sort=nearest, limit=1] feet

execute if score @s white_timer matches 60 at @s run playsound entity.egg.throw hostile @a ~ ~ ~ 1 1

execute if score @s white_timer matches 60 run function white:mob/dusk_dweller/throw_stick

execute if score @s white_timer matches 120.. run scoreboard players reset @s white_timer

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:10,RequiredPlayerRange:20,Delay:2,MinSpawnDelay:700,MaxSpawnDelay:800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:bogged",Team:"white_forest_creature",Health:16f,Tags:["white.mob","white.dusk_skeleton"],CustomName:{"bold":true,"color":"#F6FFF2","shadow_color":-10058464,"text":"暮色居民"},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":7577937,"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:flow"}}},mainhand:{id:"minecraft:stick",count:2}},drop_chances:{chest:0.000,mainhand:0.600},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:follow_range",base:26},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.15}]}},weight:1}]}] 1