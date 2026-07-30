scoreboard players add @s pink_timer 1

execute if score @s pink_timer matches 10..15 if entity @e[distance=..14, type=!#not_mob, team=!pink_pirate_team] run scoreboard players set @s pink_timer 16
execute if score @s pink_timer matches 10..15 unless entity @e[distance=..14, type=!#not_mob, team=!pink_pirate_team] run scoreboard players set @s pink_timer 10

execute if score @s pink_timer matches 20 run effect give @s glowing 2 0 true

execute if score @s pink_timer matches 40..60 run tp @s ^ ^ ^ facing entity @e[distance=..30, type=!#not_mob, team=!pink_pirate_team, limit=1, sort=nearest] feet

execute if score @s pink_timer matches 60 run summon pufferfish ^0.5 ^0.8 ^1.2 {CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Team:"pink_pirate_team",Health:6f,Tags:["pink.pufferfish"],CustomName:{"bold":true,"color":"#F7BEE1","italic":false,"shadow_color":-12561316,"text":"刺刺河豚","underlined":true},attributes:[{id:"minecraft:attack_damage",base:2},{id:"minecraft:max_health",base:6},{id:"minecraft:movement_speed",base:0.24},{id:"minecraft:scale",base:1.7}]}

execute if score @s pink_timer matches 200.. run scoreboard players set @s pink_timer 0

effect clear @s poison

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:3,MaxNearbyEntities:4,RequiredPlayerRange:18,Delay:1,MinSpawnDelay:1600,MaxSpawnDelay:2000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:vindicator",Team:"pink_pirate_team",Health:32f,Johnny:0b,Tags:["pink.pirate_angler"],CustomName:{"bold":true,"color":"#CF69AD","italic":false,"shadow_color":-15521175,"text":"**海釣手**","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{"depth_strider":2,"vanishing_curse":1}}},head:{id:"minecraft:stone_stairs",count:1},mainhand:{id:"minecraft:fishing_rod",count:1,components:{"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:pufferfish",count:3}},drop_chances:{feet:0.000,head:0.000,mainhand:0.000,offhand:0.200},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:attack_knockback",base:2.4},{id:"minecraft:follow_range",base:30},{id:"minecraft:max_health",base:32},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:water_movement_efficiency",base:0.4}]}},weight:1}]}] 1