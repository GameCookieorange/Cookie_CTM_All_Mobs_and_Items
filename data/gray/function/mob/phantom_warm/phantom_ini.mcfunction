execute if entity @e[type=#minecraft:attack_entity ,distance=..3] run function gray:mob/phantom_warm/phantom_died

particle dust_color_transition{from_color:[1.000,0.506,0.220],to_color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 20 normal
particle flame ~ ~ ~ 0.3 0.3 0.3 0.05 1 normal

scoreboard players add @s gray_debug 1

scoreboard players add @s gray_timer 1

execute if score @s gray_timer matches 80 at @s run playsound entity.breeze.idle_ground hostile @a ~ ~ ~ 0.8 0.6

execute if score @s gray_timer matches 50 at @s run playsound block.fire.ambient hostile @a ~ ~ ~ 1 0.7
execute if score @s gray_timer matches 100 at @s run playsound block.fire.ambient hostile @a ~ ~ ~ 1 0.4
execute if score @s gray_timer matches 150 at @s run playsound block.fire.ambient hostile @a ~ ~ ~ 1 0.1

execute if score @s gray_timer matches 150.. run scoreboard players set @s gray_timer 0

execute if predicate pink:is_in_water run tp @s ~ ~-10000 ~

kill @s[scores={gray_debug=1200..}] 

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:9,MaxNearbyEntities:8,RequiredPlayerRange:18,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:phantom",Silent:1b,Health:8f,Team:"gray_cloud_mobs",DeathLootTable:"minecraft:empty",Tags:["gray.warm_phantom"],CustomName:{"bold":true,"color":"#808080","italic":false,"shadow_color":-2876915,"translate":"溫熱氣流","underlined":true},equipment:{offhand:{id:"minecraft:wind_charge",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"white","italic":true,"shadow_color":-9871264,"translate":"固態風"}}}},drop_chances:{offhand:0.1},active_effects:[{id:"minecraft:fire_resistance",amplifier:1,duration:99999,show_particles:0b},{id:"minecraft:invisibility",amplifier:1,duration:99999,show_particles:0b},{id:"minecraft:weakness",amplifier:5,duration:99999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:25},{id:"minecraft:scale",base:1.5}]}},weight:1}]}] 1