scoreboard players add @s light_blue_timer 1

execute if score @s light_blue_timer matches 6 run data modify entity @s angry_at set from entity @a[distance=..12, limit=1, sort=nearest] UUID

execute if entity @a[distance=..12] if score @s light_blue_timer matches 2..3 run scoreboard players set @s light_blue_timer 5
execute unless entity @a[distance=..12] if score @s light_blue_timer matches 2..3 run scoreboard players set @s light_blue_timer 2

execute if score @s light_blue_timer matches 10 run effect give @s glowing 2 0 true

execute if score @s light_blue_timer matches 49..50 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~

execute if score @s light_blue_timer matches 50 run playsound entity.polar_bear.warning hostile @a ~ ~ ~ 3 1 1

execute if score @s light_blue_timer matches 50 run function light_blue:mob/polar_bear/calculate_motion

execute if score @s light_blue_timer matches 60 at @s run effect give @s minecraft:slowness 4 2 true

execute if score @s light_blue_timer matches 60..140 at @s run particle minecraft:dripping_water ^ ^1.2 ^1.8 0.2 0.2 0.2 0.01 3 normal

execute if score @s light_blue_timer matches 200.. run scoreboard players set @s light_blue_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:2,MaxNearbyEntities:10,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:polar_bear",Team:"light_blue_ice_creature",Health:26f,Age:2,Tags:["light_blue.mob","light_blue.polar_bear"],CustomName:{"bold":true,"color":"#75DAE6","italic":false,"shadow_color":-14064897,"text":"發怒北極熊","underlined":true},attributes:[{id:"minecraft:max_health",base:26},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:scale",base:1.2}]}},weight:1}]}] 1
