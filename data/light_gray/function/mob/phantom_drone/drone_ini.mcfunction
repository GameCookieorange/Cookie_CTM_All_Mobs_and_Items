scoreboard players set @s light_gray_timer 1

particle smoke ^ ^0.5 ^-0.5 0.5 0 0.5 0 10 normal
particle small_flame ^ ^0.5 ^-0.5 0.5 0 0.5 0 1 normal


execute if score @s light_gray_timer matches 10.. run scoreboard players set @s light_gray_timer 1

scoreboard players add @s light_gray_debug 1

execute unless entity @e[distance=..2, type=marker, tag=light_gray.marker] run kill @s


# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:12,MaxNearbyEntities:3,RequiredPlayerRange:40,Delay:0,MinSpawnDelay:2400,MaxSpawnDelay:2800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:phantom",Team:"light_gray_machine_team",Health:16f,Tags:["light_gray.phantom_drone","light_gray.machine"],Passengers:[{id:"minecraft:marker",Tags:["light_gray.marker"]},{id:"minecraft:creeper",Team:"light_gray_machine_team",Health:12f,Fuse:10,Tags:["light_gray.creeper_bomb","light_gray.machine"],CustomName:{"bold":true,"color":"gray","italic":false,"shadow_color":-13222283,"translate":"無人機易爆物","underlined":true},attributes:[{id:"minecraft:armor",base:5},{id:"minecraft:armor_toughness",base:10},{id:"minecraft:attack_damage",base:10},{id:"minecraft:follow_range",base:10},{id:"minecraft:max_health",base:12},{id:"minecraft:safe_fall_distance",base:30},{id:"minecraft:scale",base:1.2}]}],CustomName:{"bold":true,"color":"gray","italic":false,"shadow_color":-13222283,"translate":"自毀無人機","underlined":true},active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:99999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:12},{id:"minecraft:attack_damage",base:3},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:1},{id:"minecraft:scale",base:2}]}},weight:1}]}] 1