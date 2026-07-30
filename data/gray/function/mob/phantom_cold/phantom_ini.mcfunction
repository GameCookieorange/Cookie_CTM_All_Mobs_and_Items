execute if entity @e[type=#minecraft:attack_entity ,distance=..3] run function gray:mob/phantom_cold/phantom_died

particle dust_color_transition{from_color:[0.000,0.765,1.000],to_color:[0.871,0.933,1.000],scale:1} ~ ~ ~ 0.25 0.25 0.25 0.1 20 normal
particle snowflake ~ ~ ~ 0.2 0.2 0.2 0.07 3 normal

scoreboard players add @s gray_debug 1

scoreboard players add @s gray_timer 1

execute if score @s gray_timer matches 60 at @s run playsound entity.breeze.idle_air hostile @a ~ ~ ~ 0.8 1.2
execute if score @s gray_timer matches 120 at @s run playsound entity.breeze.idle_air hostile @a ~ ~ ~ 0.8 2

execute if score @s gray_timer matches 120.. run scoreboard players set @s gray_timer 0

execute if predicate pink:is_in_water run tp @s ~ ~-10000 ~

kill @s[scores={gray_debug=1200..}] 

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:9,MaxNearbyEntities:8,RequiredPlayerRange:18,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:phantom",Silent:1b,Health:8f,Team:"gray_cloud_mobs",DeathLootTable:"minecraft:empty",Tags:["gray.cold_phantom"],CustomName:{"bold":true,"color":"#808080","italic":false,"shadow_color":-12880683,"translate":"寒凍氣流","underlined":true},equipment:{offhand:{id:"minecraft:wind_charge",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"white","italic":true,"shadow_color":-9871264,"translate":"固態風"}}}},drop_chances:{offhand:0.1},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:99999,show_particles:0b},{id:"minecraft:weakness",amplifier:5,duration:99999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:25},{id:"minecraft:scale",base:1.5}]}},weight:1}]}] 1