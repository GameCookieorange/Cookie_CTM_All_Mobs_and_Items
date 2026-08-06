scoreboard players add @s orange_timer 1

execute if score @s orange_timer matches 10..15 unless entity @a[distance=..20] run scoreboard players set @s orange_timer 0 
execute if score @s orange_timer matches 10..15 if entity @a[distance=..20] run scoreboard players set @s orange_timer 20 

execute if score @s orange_timer matches 60 run effect give @s glowing 2 1 true

execute if score @s orange_timer matches 60..80 at @s run tp @s ^ ^ ^ facing entity @p eyes

execute if score @s orange_timer matches 80 run execute as @s at @s run summon marker ^ ^ ^30 {Tags:["orange.mob","orange.location"]}
execute if score @s orange_timer matches 80 run execute as @s at @s run summon marker ^ ^ ^ {Tags:["orange.mob","orange.sonic_test"]}
execute if score @s orange_timer matches 80 run playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 2 2

execute if score @s orange_timer matches 400.. run scoreboard players set @s orange_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:20,MaxNearbyEntities:60,RequiredPlayerRange:40,Delay:1,MinSpawnDelay:1200,MaxSpawnDelay:2400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:bat",Health:10f,Tags:["orange.mob","orange.sonic_bat"],CustomName:{"bold":true,"color":"#FF9538","italic":false,"shadow_color":-12773104,"text":"音波蝙蝠","underlined":false},attributes:[{id:"minecraft:max_health",base:10},{id:"minecraft:scale",base:1.3}]}},weight:1}]}] 1