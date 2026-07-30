scoreboard players add @s magenta_timer 1 

execute if score @s magenta_timer matches 100 at @s run spreadplayers ~ ~ 5 10 true @s

execute if score @s magenta_timer matches 100 at @s run playsound entity.fox.teleport hostile @p[distance=..30] ~ ~ ~ 1 1

execute if score @s magenta_timer matches 100 run data modify entity @s life_ticks set value 0

execute if score @s magenta_timer matches 150.. run scoreboard players set @s magenta_timer 0

# //give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:6,MaxNearbyEntities:10,RequiredPlayerRange:20,Delay:2,MinSpawnDelay:600,MaxSpawnDelay:800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:endermite",Health:10f,Tags:["magenta.space_bug"],CustomName:{"bold":true,"color":"light_purple","italic":false,"shadow_color":-14703718,"text":"外星蟎","underlined":true},attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:scale",base:1.5}]}},weight:1}]}] 1