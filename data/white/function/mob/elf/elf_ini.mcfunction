scoreboard players add @s white_timer 1
scoreboard players add @s white_debug 1

execute if score @s white_timer matches 40.. run scoreboard players set @s white_timer 0

execute if score @s white_timer matches 5 at @s as @e[team=white_forest_creature, distance=..24, type=zombie] run effect give @s instant_damage 1 0 true
execute if score @s white_timer matches 5 at @s as @e[team=white_forest_creature, distance=..24, type=bogged] run effect give @s instant_damage 1 0 true
execute if score @s white_timer matches 5 at @s as @e[team=white_forest_creature, distance=..24, type=phantom] run effect give @s instant_damage 1 0 true
execute if score @s white_timer matches 5 at @s as @e[team=white_forest_creature, distance=..24] run effect give @s regeneration 3 2 true

execute if score @s white_timer matches 5 at @s as @e[team=white_forest_creature, distance=..24] at @s run particle heart ~ ~2 ~ 0 0 0 0 1

execute if score @s white_timer matches 5 run execute at @s run effect give @e[distance=..8] regeneration 2 1

execute if score @s white_debug matches 1180.. run effect give @s invisibility infinite 1 true

execute if score @s white_debug matches 1180..1182 run execute at @s run particle scrape ~ ~ ~ 0.4 0.4 0.4 0.5 20


execute if score @s white_debug matches 1200.. run tp @s ~ ~-300 ~
execute if score @s white_debug matches 1250.. run kill @s

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:12,MaxNearbyEntities:50,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:1600,MaxSpawnDelay:1800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:allay",Team:"white_forest_creature",PersistenceRequired:1b,Health:6f,Tags:["white.elf"],CustomName:{"bold":true,"color":"white","italic":false,"shadow_color":-5261928,"text":"森林妖精"},attributes:[{id:"minecraft:max_health",base:6},{id:"minecraft:scale",base:0.8}],Inventory:[{id:"minecraft:sunflower",count:1,components:{"minecraft:enchantments":{"fire_aspect":1,"sharpness":1,"smite":1,"vanishing_curse":1}}}]}},weight:1}]}] 1