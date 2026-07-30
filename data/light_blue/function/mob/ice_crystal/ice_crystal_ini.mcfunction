execute at @s run particle minecraft:snowflake ~ ~0.5 ~ 0.25 0.25 0.25 0.01 10 normal

execute if entity @a[distance=..1.2] at @s run function light_blue:mob/ice_crystal/ice_crystal_oneshot

scoreboard players add @s light_blue_timer 1
scoreboard players add @s light_blue_debug 1

execute at @s[nbt={HurtTime:10s}] run playsound block.snow.break hostile @a ~ ~ ~ 1 1.6 1

effect give @s invisibility 2 0 true 

execute if score @s light_blue_timer matches 2 run data modify entity @s angry_at set from entity @p UUID

execute if score @s light_blue_timer matches 100.. run scoreboard players set @s light_blue_timer 0


execute if score @s light_blue_debug matches 2000.. at @s run kill @s

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:6,MaxNearbyEntities:10,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:bee",Glowing:1b,Silent:1b,Health:4f,anger_end_time:99999,Tags:["light_blue.ice_crystal"],CustomName:{"bold":true,"color":"#75DAE6","italic":false,"shadow_color":-14064897,"text":"冰晶","underlined":true},attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:50},{id:"minecraft:max_health",base:4},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:scale",base:1.4},{id:"minecraft:flying_speed",base:1.5}]}},weight:1}]}] 1