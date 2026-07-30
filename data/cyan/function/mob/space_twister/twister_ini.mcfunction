effect clear @a[distance=..3] poison

scoreboard players add @s cyan_timer 1

execute if score @s cyan_timer matches 10..15 at @s unless entity @e[tag=cyan.space_creature, tag=!cyan.hyperbaric, type=!#not_mob, distance=..30, tag=!cyan.space_twister] run scoreboard players set @s cyan_timer 10
execute if score @s cyan_timer matches 10..15 at @s if entity @e[tag=cyan.space_creature, tag=!cyan.hyperbaric, type=!#not_mob, distance=..30, tag=!cyan.space_twister] run scoreboard players set @s cyan_timer 16

execute at @s if score @s cyan_timer matches 50..110 run particle portal ~ ~ ~ 0.2 0.2 0.2 0.5 20
execute if score @s cyan_timer matches 110 run function cyan:mob/space_twister/twister_change

execute if score @s cyan_timer matches 300.. run scoreboard players set @s cyan_timer 0

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:8,MaxNearbyEntities:6,RequiredPlayerRange:20,Delay:0,MinSpawnDelay:1200,MaxSpawnDelay:1600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:cave_spider",Glowing:1b,Team:"cyan_space_team",PersistenceRequired:1b,Health:34f,Tags:["cyan.space_twister","cyan.space_creature"],CustomName:{"bold":true,"color":"#48B094","italic":false,"shadow_color":-13541535,"translate":"*空間扭曲者*","underlined":true},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:4},{id:"minecraft:attack_damage",base:6.5},{id:"minecraft:follow_range",base:30},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:34},{id:"minecraft:movement_speed",base:0.28},{id:"minecraft:scale",base:1.65}]}},weight:1}]}] 1