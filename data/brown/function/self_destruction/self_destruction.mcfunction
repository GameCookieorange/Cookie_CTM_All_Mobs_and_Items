execute if entity @a[distance=..40] run scoreboard players add @s brown_debug 1

execute if score @s brown_debug matches 160 run effect give @s speed 11 3 true 
execute if score @s brown_debug matches 160..480 at @s run particle dust_color_transition{from_color:[0.835,0.839,0.804],to_color:[1.000,0.965,0.851],scale:1} ~ ~1 ~ 0.5 0.7 0.5 0 1 normal

execute if score @s brown_debug matches 320 run effect give @s speed 11 6 true

execute if score @s brown_debug matches 480 run effect give @s speed 11 9 true
execute if score @s brown_debug matches 480..800 at @s run particle dust_color_transition{from_color:[0.835,0.839,0.804],to_color:[1.000,0.965,0.851],scale:1.5} ~ ~1 ~ 0.7 0.8 0.7 1 2 normal

execute if score @s brown_debug matches 640 run effect give @s speed 11 12 true 

execute if score @s brown_debug matches 800 run effect give @s speed 11 15 true
execute if score @s brown_debug matches 800.. at @s run particle dust_color_transition{from_color:[0.835,0.839,0.804],to_color:[1.000,0.965,0.851],scale:2} ~ ~1 ~ 1 1.2 1 1 3 normal

execute if score @s brown_debug matches 900 run effect give @s glowing 10 0 true

execute if score @s brown_debug matches 960.. run data merge entity @s {ignited:1b,Fuse:30}

effect give @s unluck 4 30 true

execute if score @s brown_debug matches 160 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 320 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 480 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 640 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 800 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 160 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 320 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 480 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 640 at @s run function brown:self_destruction/level_up
execute if score @s brown_debug matches 800 at @s run function brown:self_destruction/level_up

# give @a apple

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:6,MaxNearbyEntities:4,RequiredPlayerRange:22,Delay:0,MinSpawnDelay:2200,MaxSpawnDelay:2800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Team:"brown_steampunk",Health:28f,ExplosionRadius:4b,Tags:["brown.self_destruction","brown.steampunk"],CustomName:{"bold":true,"color":"#AB8456","italic":false,"shadow_color":-5723992,"text":"蒸氣自毀裝置","underlined":true},attributes:[{id:"minecraft:max_health",base:28},{id:"minecraft:follow_range",base:100},{id:"minecraft:movement_speed",base:0.1}]}},weight:1}]}] 1