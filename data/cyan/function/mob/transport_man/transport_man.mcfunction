scoreboard players add @s cyan_timer 1

execute if score @s cyan_timer matches 1 run effect give @s invisibility infinite 1 true


execute if score @s cyan_timer matches 10..15 at @s unless entity @a[sort=nearest, distance=..50] run scoreboard players set @s cyan_timer 10
execute if score @s cyan_timer matches 10..15 at @s if entity @a[sort=nearest, distance=..50] run scoreboard players set @s cyan_timer 16

execute if score @s cyan_timer matches 40 run function cyan:mob/transport_man/start_skill

execute if entity @s[tag=cyan.transport_man_can_tp] if entity @e[type=armor_stand, tag=cyan.armor_stand_tp_place, distance=..20] run function cyan:mob/transport_man/end_skill

execute if score @s cyan_timer matches 180 at @s run scoreboard players set @s cyan_timer 2
execute if score @s cyan_timer matches 200 run tag @s remove cyan.transport_man_can_tp

execute if score @s cyan_timer matches 300.. at @s run scoreboard players set @s cyan_timer 2

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:5,RequiredPlayerRange:24,Delay:0,MinSpawnDelay:1600,MaxSpawnDelay:2200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",Glowing:1b,Health:14f,IsBaby:1b,Tags:["cyan.transport_man","cyan.space_creature"],CustomName:{"bold":true,"color":"#7BD1C0","italic":false,"shadow_color":-7850829,"translate":"傳送人","underlined":true},attributes:[{id:"minecraft:armor",base:4},{id:"minecraft:attack_damage",base:6.5},{id:"minecraft:follow_range",base:30},{id:"minecraft:gravity",base:0.05},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.1},{id:"minecraft:safe_fall_distance",base:40},{id:"minecraft:scale",base:0.9}]}},weight:1}]}] 1