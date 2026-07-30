execute if predicate light_green:is_water run scoreboard players add @s light_green_timer 1

scoreboard players add @s light_green_debug 1

execute as @s[type=slime,nbt={Size:0}] if score @s light_green_debug matches 1 run function light_green:mob/bloater/initial/smallest
execute as @s[type=slime,nbt={Size:1}] if score @s light_green_debug matches 1 run function light_green:mob/bloater/initial/medium
execute as @s[type=slime,nbt={Size:3}] if score @s light_green_debug matches 1 run function light_green:mob/bloater/initial/large

# execute as @s[type=slime,nbt={Size:0}] if score @s light_green_timer matches 390..400 at @s run function light_green:mob/bloater/larger
# execute as @s[type=slime,nbt={Size:1}] if score @s light_green_timer matches 390..400 at @s run function light_green:mob/bloater/largest

# execute if score @s light_green_timer matches 400.. run scoreboard players set @s light_green_timer 390

execute as @s[type=slime,nbt={Size:0}] if score @s light_green_timer matches 200 at @s run function light_green:mob/bloater/larger
execute as @s[type=slime,nbt={Size:1}] if score @s light_green_timer matches 200 at @s run function light_green:mob/bloater/largest

execute if score @s light_green_timer matches 200.. run scoreboard players set @s light_green_timer 2

execute if score @s[type=slime,nbt={Size:0}] light_green_debug matches 5 run execute as @e[type=#minecraft:attack_entity, distance=..1] at @s run damage @s 1 mob_attack by @e[tag=light_green.bloater, limit=1, sort=nearest]

execute if score @s[type=slime,nbt={Size:0}] light_green_debug matches 12.. run scoreboard players set @s light_green_debug 2

execute if predicate light_green:is_water run particle dripping_water ~ ~ ~ 1.5 1.5 1.5 1 10 normal

particle dripping_water ~ ~ ~ 0.3 0.3 0.3 1 1 normal



# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:6,MaxNearbyEntities:12,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:750,MaxSpawnDelay:900,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:slime",Team:"light_green_slime",Health:12f,Size:1,Tags:["light_green.bloater"],CustomName:{"bold":true,"color":"#9EE01B","italic":false,"shadow_color":-11765710,"text":"膨脹者","underlined":true},attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:jump_strength",base:0.5},{id:"minecraft:max_health",base:12},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:safe_fall_distance",base:15}]}},weight:1}]}] 1