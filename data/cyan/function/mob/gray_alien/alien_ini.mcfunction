scoreboard players add @s cyan_timer 1

execute if score @s cyan_timer matches 10..15 at @s unless entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..16] run scoreboard players set @s cyan_timer 10
execute if score @s cyan_timer matches 10..15 at @s if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..16] run scoreboard players set @s cyan_timer 16

execute if score @s cyan_timer matches 20 run effect give @s glowing 1 1 true

execute if score @s cyan_timer matches 40 run summon marker ~ ~ ~ {Tags:["cyan.gray_alien_marker"]}
execute if score @s cyan_timer matches 50 run summon marker ~ ~ ~ {Tags:["cyan.gray_alien_marker"]}
execute if score @s cyan_timer matches 60 run summon marker ~ ~ ~ {Tags:["cyan.gray_alien_marker"]} 
execute if score @s cyan_timer matches 70 run summon marker ~ ~ ~ {Tags:["cyan.gray_alien_marker"]}
execute if score @s cyan_timer matches 80 run summon marker ~ ~ ~ {Tags:["cyan.gray_alien_marker"]} 

execute if score @s cyan_timer matches 300.. run scoreboard players set @s cyan_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:8,MaxNearbyEntities:6,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:1000,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:skeleton",OnGround:1b,Health:24f,Team:"cyan_space_team",Tags:["cyan.gray_alien","cyan.space_creature"],CustomName:{"bold":true,"color":"gray","italic":false,"shadow_color":-11355479,"translate":"*灰外星人*","underlined":true},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":11776947,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:coast"}}},head:{id:"minecraft:gray_stained_glass",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{head:0.000},attributes:[{id:"minecraft:armor",base:4},{id:"minecraft:attack_damage",base:4.5},{id:"minecraft:follow_range",base:24},{id:"minecraft:max_health",base:24},{id:"minecraft:movement_speed",base:0.18},{id:"minecraft:scale",base:0.75}]}},weight:1}]}] 1