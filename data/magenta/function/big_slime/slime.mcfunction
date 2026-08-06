execute if score @s magenta_debug matches 1 run attribute @s scale base set 2.5

scoreboard players add @s magenta_debug 1
execute if score @s magenta_debug matches 1 run effect give @s instant_health 1 20 true

scoreboard players add @s magenta_timer 1
execute if score @s[type=slime,nbt={Size:0}] magenta_timer matches 5 run damage @e[type=#minecraft:attack_entity, limit=1, distance=..1.8] 1 mob_attack by @e[limit=1, type=slime,nbt={Size:0}]
execute if score @s[type=slime,nbt={Size:0}] magenta_timer matches 10.. run scoreboard players set @s magenta_timer 0

execute as @s[type=slime,nbt={Size:1}] if score @s magenta_debug matches 1 run attribute @s attack_damage base set 3
execute as @s[type=slime,nbt={Size:1}] if score @s magenta_debug matches 1 run attribute @s max_health base set 15

execute as @s[type=slime,nbt={Size:0}] if score @s magenta_debug matches 1 run attribute @s max_health base set 7


# execute if data entity @s {size:0} run data modify entity @s damage set value 16


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:5,MaxNearbyEntities:8,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1400,MaxSpawnDelay:1800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:slime",HurtTime:10,Health:30f,Size:3,PersistenceRequired:1b,wasOnGround:1b,Tags:["magenta.mob","magenta.big_slime"],CustomName:{"bold":true,"color":"light_purple","italic":false,"shadow_color":-7348638,"text":"**大史萊姆**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:attack_knockback",base:20},{id:"minecraft:jump_strength",base:0},{id:"minecraft:max_health",base:30},{id:"minecraft:scale",base:2.5}]}},weight:1}]}] 1