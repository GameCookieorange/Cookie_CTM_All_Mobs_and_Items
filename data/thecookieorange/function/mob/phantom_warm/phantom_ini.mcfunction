execute if entity @e[type=#minecraft:attack_entity ,distance=..3] run function thecookieorange:mob/phantom_warm/phantom_died

particle dust_color_transition{from_color:[1.000,0.506,0.220],to_color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.2 0.2 0.2 2 20 force

scoreboard players add @s orange_debug 1

kill @s[scores={orange_debug=2000}] 

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:6,MaxNearbyEntities:8,RequiredPlayerRange:12,Delay:10,MinSpawnDelay:800,MaxSpawnDelay:880,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},equipment:{loot_table:"0"},entity:{id:"minecraft:phantom",Health:4f,Silent:1b,DeathLootTable:"minecraft:empty",size:2,Tags:["orange.warm.wind.phantom"],CustomName:{"bold":true,"color":"white","italic":true,"shadow_color":-2876915,"translate":"entity.cookieorange_res.orange_warm_wind_phantom"},equipment:{offhand:{id:"minecraft:wind_charge",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"white","italic":true,"shadow_color":-9871264,"translate":"item.cookieorange_res.solid_wind"}}}},drop_chances:{offhand:0.1},active_effects:[{id:"minecraft:weakness",amplifier:5,duration:99999,show_particles:0b},{id:"minecraft:invisibility",amplifier:1,duration:99999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0.1},{id:"minecraft:follow_range",base:20}]}},weight:1}]}] 1