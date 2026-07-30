execute if entity @e[type=#minecraft:attack_entity ,distance=..3] run function gray:mob/phantom_wind/phantom_died

particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 0.01 5 force

scoreboard players add @s gray_debug 1

scoreboard players add @s gray_timer 1

execute if score @s gray_timer matches 60 at @s run playsound entity.breeze.idle_ground hostile @a ~ ~ ~ 1.5 0.8

execute if score @s gray_timer matches 120 at @s run playsound entity.breeze.idle_ground hostile @a ~ ~ ~ 1.5 1.5

execute if score @s gray_timer matches 140.. run scoreboard players set @s gray_timer 0

execute if predicate pink:is_in_water run tp @s ~ ~-10000 ~

kill @s[scores={gray_debug=1500..}]

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:9,MaxNearbyEntities:8,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:phantom",Silent:1b,Health:8f,Team:"gray_cloud_mobs",DeathLootTable:"minecraft:empty",Tags:["gray.wind_phantom"],CustomName:{"bold":true,"color":"#808080","italic":false,"shadow_color":-2039584,"translate":"不穩定氣流","underlined":true},equipment:{offhand:{id:"minecraft:wind_charge",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"white","italic":true,"shadow_color":-9871264,"translate":"固態風"}}}},drop_chances:{offhand:0.1},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:99999,show_particles:0b},{id:"minecraft:wind_charged",amplifier:1,duration:99999,show_particles:0b},{id:"minecraft:weakness",amplifier:5,duration:99999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:25},{id:"minecraft:scale",base:1.5}]}},weight:1}]}] 1