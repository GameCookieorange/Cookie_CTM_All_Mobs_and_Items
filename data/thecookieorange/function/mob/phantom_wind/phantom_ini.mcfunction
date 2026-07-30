execute if entity @e[type=#minecraft:attack_entity ,distance=..3] run function thecookieorange:mob/phantom_wind/phantom_died

particle minecraft:cloud ~ ~ ~ 2 2 2 0.02 0 force

scoreboard players add @s orange_debug 1

kill @s[scores={orange_debug=2000}] 

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:6,MaxNearbyEntities:8,RequiredPlayerRange:12,Health:4f,Delay:10,MinSpawnDelay:800,MaxSpawnDelay:880,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},equipment:{loot_table:"0"},entity:{id:"minecraft:phantom",Silent:1b,Health:4f,DeathLootTable:"minecraft:empty",size:2,Tags:["orange.wind.charge.phantom"],CustomName:{"bold":true,"color":"white","shadow_color":-22252,"translate":"entity.cookieorange_res.orange_wind_charge_phantom"},equipment:{offhand:{id:"minecraft:wind_charge",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"white","italic":true,"shadow_color":-9871264,"translate":"item.cookieorange_res.solid_wind"}}}},drop_chances:{offhand:0.1},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:99999,show_particles:0b},{id:"minecraft:wind_charged",amplifier:1,duration:99999,show_particles:0b},{id:"minecraft:weakness",amplifier:5,duration:99999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0.1},{id:"minecraft:follow_range",base:20}]}},weight:1}]}] 1