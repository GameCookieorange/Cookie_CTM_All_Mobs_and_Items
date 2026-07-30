scoreboard players add @s yellow_timer 1
scoreboard players add @s yellow_debug 1


execute if score @s yellow_timer matches 5..9 if entity @e[limit=1, distance=..14, type=#minecraft:attack_entity] run scoreboard players set @s yellow_timer 10

execute if score @s yellow_timer matches 5..9 unless entity @e[limit=1, distance=..14, type=#minecraft:attack_entity] run scoreboard players set @s yellow_timer 5

execute if score @s yellow_timer matches 11 run effect give @s glowing 1 0 true
execute if score @s yellow_timer matches 30 run function yellow:mob/antlion/spit_sand
execute if score @s yellow_timer matches 40 run function yellow:mob/antlion/spit_sand
execute if score @s yellow_timer matches 50 run function yellow:mob/antlion/spit_sand

execute if score @s yellow_timer matches 200.. run scoreboard players set @s yellow_timer 0


execute if score @s yellow_debug matches 100 if block ~1 ~ ~ #sand run setblock ~1 ~ ~ air destroy
execute if score @s yellow_debug matches 100 if block ~-1 ~ ~ #sand run setblock ~-1 ~ ~ air destroy
execute if score @s yellow_debug matches 100 if block ~ ~ ~1 #sand run setblock ~ ~ ~1 air destroy
execute if score @s yellow_debug matches 100 if block ~ ~ ~-1 #sand run setblock ~ ~ ~-1 air destroy
execute if block ~ ~ ~ #sand run setblock ~ ~ ~ air destroy

execute if score @s yellow_debug matches 101.. run scoreboard players set @s yellow_debug 0



# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:2,MaxNearbyEntities:4,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1000,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:silverfish",Health:24f,Tags:["yellow.antlion"],CustomName:{"bold":true,"color":"yellow","italic":false,"shadow_color":-7250921,"text":"流沙蟻獅","underlined":true},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:24},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:scale",base:2.4},{id:"minecraft:step_height",base:2}]}},weight:1}]}] 1