scoreboard players add @s blue_timer 1
execute if entity @s[team=!blue_torpedo] run team join blue_torpedo

execute if score @s blue_timer matches 1..60 rotated as @s run tp @s[tag=blue.squid_torpedo_back] ~ ~ ~ facing ~ ~ ~-0.1 
execute if score @s blue_timer matches 1..60 rotated as @s run tp @s[tag=blue.squid_torpedo_front] ~ ~ ~ facing ~ ~ ~0.1
execute if score @s blue_timer matches 1..60 rotated as @s run tp @s[tag=blue.squid_torpedo_up] ~ ~ ~ facing ~ ~0.1 ~
execute if score @s blue_timer matches 1..60 rotated as @s run tp @s[tag=blue.squid_torpedo_down] ~ ~ ~ facing ~ ~-0.1 ~
execute if score @s blue_timer matches 1..60 rotated as @s run tp @s[tag=blue.squid_torpedo_left] ~ ~ ~ facing ~-0.1 ~ ~
execute if score @s blue_timer matches 1..60 rotated as @s run tp @s[tag=blue.squid_torpedo_right] ~ ~ ~ facing ~0.1 ~ ~

execute if score @s blue_timer matches 61.. run tp @s[tag=!blue.find_the_player] ^ ^ ^0.18
execute if score @s blue_timer matches 61 at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1.5 0.6
execute if score @s blue_timer matches 61 at @s run particle squid_ink ~ ~ ~ 0.4 0.4 0.4 0.5 75 normal

execute as @s[nbt={HurtTime:9s}] if score @s blue_timer matches ..60 run scoreboard players add @s blue_timer 700
execute as @s[nbt={HurtTime:9s}] if score @s blue_timer matches 65.. run scoreboard players add @s blue_timer 700
execute if score @s blue_timer matches 61..65 rotated as @s run tp @s ^ ^ ^0.8

execute if score @s blue_timer matches 61.. unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ spawner run function blue:mob/squid/change_to_follow/explode

execute if score @s blue_timer matches 61.. if entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] run tag @s add blue.find_the_player

execute if score @s blue_timer matches 61.. if entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] at @s[tag=blue.squid_torpedo_front] run tag @s remove blue.squid_torpedo_front
execute if score @s blue_timer matches 61.. if entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] at @s[tag=blue.squid_torpedo_back] run tag @s remove blue.squid_torpedo_back
execute if score @s blue_timer matches 61.. if entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] at @s[tag=blue.squid_torpedo_left] run tag @s remove blue.squid_torpedo_left
execute if score @s blue_timer matches 61.. if entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] at @s[tag=blue.squid_torpedo_right] run tag @s remove blue.squid_torpedo_right
execute if score @s blue_timer matches 61.. if entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] at @s[tag=blue.squid_torpedo_up] run tag @s remove blue.squid_torpedo_up
execute if score @s blue_timer matches 61.. if entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] at @s[tag=blue.squid_torpedo_down] run tag @s remove blue.squid_torpedo_down
execute if score @s blue_timer matches 61.. if entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] at @s[tag=blue.squid_torpedo] run tag @s remove blue.squid_torpedo

execute if score @s blue_timer matches 65.. if entity @a[distance=9..15] run function blue:mob/squid/sound/near_warning

effect give @s resistance 1 5 true 

execute if score @s blue_timer matches 600.. run function blue:mob/squid/change_to_follow/explode


# back
# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:10,RequiredPlayerRange:50,Delay:20,MinSpawnDelay:160,MaxSpawnDelay:200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:squid",NoGravity:1b,Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:50f,Age:1,Tags:["blue.ocean_army","blue.squid_torpedo_back","blue.squid_torpedo"],CustomName:{"bold":true,"color":"#7792dc","italic":false,"shadow_color":-15907362,"text":"魚雷飛彈"},data:{blue.squid_torpedo_back:1b},attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:max_health",base:50},{id:"minecraft:scale",base:0.6},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1

# down
# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:10,RequiredPlayerRange:50,Delay:20,MinSpawnDelay:160,MaxSpawnDelay:200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:squid",NoGravity:1b,Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:50f,Age:1,Tags:["blue.ocean_army","blue.squid_torpedo_down","blue.squid_torpedo"],CustomName:{"bold":true,"color":"#7792dc","italic":false,"shadow_color":-15907362,"text":"魚雷飛彈"},data:{blue.squid_torpedo_down:1b},active_effects:[{id:"minecraft:resistance",amplifier:4,duration:9999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:max_health",base:50},{id:"minecraft:scale",base:0.6},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1

# front 
# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:10,RequiredPlayerRange:50,Delay:20,MinSpawnDelay:160,MaxSpawnDelay:200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:squid",NoGravity:1b,Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:50f,Age:1,Tags:["blue.ocean_army","blue.squid_torpedo_front","blue.squid_torpedo"],CustomName:{"bold":true,"color":"#7792dc","italic":false,"shadow_color":-15907362,"text":"魚雷飛彈"},data:{blue.squid_torpedo_front:1b},active_effects:[{id:"minecraft:resistance",amplifier:4,duration:9999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:max_health",base:50},{id:"minecraft:scale",base:0.6},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1

# left
# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:10,RequiredPlayerRange:50,Delay:20,MinSpawnDelay:160,MaxSpawnDelay:200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:squid",NoGravity:1b,Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:50f,Age:1,Tags:["blue.ocean_army","blue.squid_torpedo_left","blue.squid_torpedo"],CustomName:{"bold":true,"color":"#7792dc","italic":false,"shadow_color":-15907362,"text":"魚雷飛彈"},data:{blue.squid_torpedo_left:1b},active_effects:[{id:"minecraft:resistance",amplifier:4,duration:9999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:max_health",base:50},{id:"minecraft:scale",base:0.6},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1

# right
# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:10,RequiredPlayerRange:50,Delay:20,MinSpawnDelay:160,MaxSpawnDelay:200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:squid",NoGravity:1b,Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:50f,Age:1,Tags:["blue.ocean_army","blue.squid_torpedo_right","blue.squid_torpedo"],CustomName:{"bold":true,"color":"#7792dc","italic":false,"shadow_color":-15907362,"text":"魚雷飛彈"},data:{blue.squid_torpedo_right:1b},active_effects:[{id:"minecraft:resistance",amplifier:4,duration:9999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:max_health",base:50},{id:"minecraft:scale",base:0.6},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1

# up
# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:10,RequiredPlayerRange:50,Delay:20,MinSpawnDelay:160,MaxSpawnDelay:200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:squid",NoGravity:1b,Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:50f,Age:1,Tags:["blue.ocean_army","blue.squid_torpedo_up","blue.squid_torpedo"],CustomName:{"bold":true,"color":"#7792dc","italic":false,"shadow_color":-15907362,"text":"魚雷飛彈"},data:{blue.squid_torpedo_up:1b},active_effects:[{id:"minecraft:resistance",amplifier:4,duration:9999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:max_health",base:50},{id:"minecraft:scale",base:0.6},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1