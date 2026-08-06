scoreboard players add @s magenta_timer 1

execute at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.01 2

execute if score @s magenta_timer matches 600.. run kill @s

effect give @s glowing 1 1 true 

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:5,MaxNearbyEntities:10,RequiredPlayerRange:14,Delay:2,MinSpawnDelay:600,MaxSpawnDelay:800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:silverfish",Silent:1b,PersistenceRequired:0b,Health:6f,Tags:["magenta.mob","magenta.wind_core"],CustomName:{"bold":true,"color":"light_purple","italic":false,"shadow_color":-7237231,"text":"氣流核心","underlined":true},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b},{id:"minecraft:wind_charged",amplifier:1,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:max_health",base:6},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:scale",base:1.5},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1