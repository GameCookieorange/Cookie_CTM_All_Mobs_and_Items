execute as @a[distance=..5, tag=cyan.start_breath] at @s run scoreboard players add @s cyan_player_air_timer 5

execute as @a[distance=..5, tag=cyan.start_breath] at @s run particle composter ~ ~1.5 ~ 0.8 0.8 0.8 0.5 4 normal

particle cloud ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal

execute unless predicate cyan:is_sitting run scoreboard players add @s cyan_debug 1

execute if score @s cyan_debug matches 10 as @a[distance=..5, tag=cyan.start_breath] at @s run scoreboard players add @s cyan_player_air_timer 600
execute if score @s cyan_debug matches 10 as @a[distance=..5, tag=cyan.start_breath] at @s run particle composter ~ ~ ~ 0.8 0.8 0.8 0.5 20 normal
execute if score @s cyan_debug matches 10 at @s run playsound entity.generic.extinguish_fire player @a ~ ~1.5 ~ 0.2 0.2

execute if score @s cyan_debug matches 10 at @s run particle cloud ~ ~ ~ 1.5 1.5 1.5 0.05 100 normal
execute if score @s cyan_debug matches 11.. run kill @s

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:8,MaxNearbyEntities:4,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:1600,MaxSpawnDelay:1800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:bee",Silent:1b,Invulnerable:0b,Glowing:1b,Health:16f,Tags:["cyan.space_creature","cyan.hyperbaric"],Passengers:[{id:"minecraft:marker",Tags:["cyan.hyperbaric_marker"]}],CustomName:{"bold":true,"color":"#A3CCC8","italic":false,"shadow_color":-10851482,"translate":"高壓氧","underlined":true},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:9999999,show_particles:0b},{id:"minecraft:weakness",amplifier:100,duration:9999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:50},{id:"minecraft:max_health",base:16},{id:"minecraft:scale",base:1.2}]}},weight:1}]}] 1