execute if score @s light_green_debug matches 1 run attribute @s scale base set 2.8

scoreboard players add @s light_green_debug 1
execute if score @s light_green_debug matches 1 run effect give @s instant_health 1 20 true

scoreboard players add @s light_green_timer 1
execute if score @s[type=slime,nbt={Size:0}] light_green_timer matches 5 run damage @e[type=#minecraft:attack_entity, limit=1, distance=..1.8] 2 mob_attack by @e[limit=1, type=slime,nbt={Size:0}]
execute if score @s[type=slime,nbt={Size:0}] light_green_timer matches 10.. run scoreboard players set @s light_green_timer 0

execute as @s[type=slime,nbt={Size:1}] if score @s light_green_debug matches 1 run attribute @s attack_damage base set 4
execute as @s[type=slime,nbt={Size:1}] if score @s light_green_debug matches 1 run attribute @s max_health base set 22
execute as @s[type=slime,nbt={Size:0}] if score @s light_green_debug matches 1 run attribute @s max_health base set 10

# execute if score @s light_green_debug matches 2000 run kill @s

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:5,MaxNearbyEntities:8,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1000,MaxSpawnDelay:1400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:slime",Health:44f,Size:3,Team:"light_green_slime",PersistenceRequired:1b,wasOnGround:1b,Tags:["light_green.big_slime"],CustomName:{"bold":true,"color":"#83D136","italic":false,"shadow_color":-15778554,"text":"**大史萊姆**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:jump_strength",base:0},{id:"minecraft:max_health",base:44},{id:"minecraft:scale",base:2.8}]}},weight:1}]}] 1