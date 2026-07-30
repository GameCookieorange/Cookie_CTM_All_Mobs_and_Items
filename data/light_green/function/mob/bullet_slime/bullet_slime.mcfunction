scoreboard players add @s light_green_timer 1

execute if score @s light_green_timer matches 50 run effect give @s jump_boost 1 0 true

execute if score @s light_green_timer matches 100 run effect give @s jump_boost 1 4 true 

execute if score @s light_green_timer matches 150 run effect give @s jump_boost 1 2 true

execute if score @s light_green_timer matches 200.. run scoreboard players set @s light_green_timer 0


scoreboard players add @s light_green_debug 1

execute if score @s light_green_debug matches 2 run execute as @e[type=#minecraft:attack_entity, distance=..2] at @s run damage @s 3 mob_attack by @e[tag=light_green.bullet_slime, limit=1, sort=nearest]

execute if score @s light_green_debug matches 4.. run scoreboard players set @s light_green_debug 0

execute if score @s light_green_debug matches 1 run particle small_gust ~ ~0.5 ~ 0.4 0.4 0.4 0.5 3 normal

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:5,MaxNearbyEntities:6,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:700,MaxSpawnDelay:900,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:slime",Team:"light_green_slime",Health:10f,Size:0,Tags:["light_green.bullet_slime"],CustomName:{"bold":true,"color":"#A1E813","italic":false,"shadow_color":-11569104,"text":"衝刺者","underlined":true},attributes:[{id:"minecraft:jump_strength",base:0.4},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:1.5},{id:"minecraft:safe_fall_distance",base:10},{id:"minecraft:scale",base:2}]}},weight:1}]}] 1