scoreboard players add @s light_gray_timer 1
 
execute if score @s light_gray_timer matches 5 run execute as @e[team=!light_gray_machine_team, type=!#not_mob, distance=..14, predicate=light_gray:in_water] at @s run function light_gray:mob/plasma/water_attack

execute if score @s light_gray_timer matches 5 if entity @e[team=!light_gray_machine_team, type=!#not_mob, distance=..14, predicate=light_gray:in_water] run execute at @s run summon marker ~ ~ ~ {Tags:["light_gray.fast_marker"]}

execute if entity @e[team=!light_gray_machine_team, type=!#not_mob, distance=..14] run effect give @s glowing 1 1 true
execute if entity @e[team=!light_gray_machine_team, type=!#not_mob, distance=..14, predicate=light_gray:in_water] run particle electric_spark ~ ~0.5 ~ 0.5 0.5 0.5 0.5 10

execute if score @s light_gray_timer matches 40.. run scoreboard players set @s light_gray_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:5,MaxNearbyEntities:2,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1200,MaxSpawnDelay:1600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:shulker",Team:"light_gray_machine_team",Health:16f,AttachFace:0b,Color:8b,Tags:["light_gray.plasma"],CustomName:{"bold":true,"color":"#B8B0B6","italic":false,"shadow_color":-12764314,"translate":"流體電漿球","underlined":true},attributes:[{id:"minecraft:max_health",base:16},{id:"minecraft:scale",base:0.5}]}},weight:1}]}] 1