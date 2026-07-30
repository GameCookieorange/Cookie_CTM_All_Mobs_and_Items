execute if entity @e[type=slime, distance=..6] run effect give @s oozing 6 0
execute as @s[nbt={active_effects:[{id:"minecraft:oozing"}]}] run effect give @s slowness 1 2 true

scoreboard players add @s light_green_timer 1

execute if score @s light_green_timer matches 10..15 if entity @a[distance=..16] run scoreboard players set @s light_green_timer 16

execute if score @s light_green_timer matches 10..15 unless entity @a[distance=..16] run scoreboard players set @s light_green_timer 10

execute if score @s light_green_timer matches 20 run effect give @s glowing 2 0 true

execute if score @s light_green_timer matches 40..60 run tp @s ^ ^ ^ facing entity @n[type=#minecraft:attack_entity] feet

execute if score @s light_green_timer matches 60 run summon marker ~ ~ ~ {Tags:["light_green.web_attack_marker"]}

execute if score @s light_green_timer matches 300.. run scoreboard players set @s light_green_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:5,MaxNearbyEntities:10,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1000,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:spider",Team:"light_green_slime",Health:20f,Tags:["light_green.web_spider"],CustomName:{"bold":true,"color":"#A4D93B","italic":false,"shadow_color":-12227049,"text":"絲網射手","underlined":true},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:scale",base:1.25}]}},weight:1}]}] 1