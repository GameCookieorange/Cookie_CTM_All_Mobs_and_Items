scoreboard players add @s pink_timer 1

execute if score @s pink_timer matches 10..15 if entity @e[distance=..6, type=!#not_mob, team=!pink_ghost_team, tag=!pink.fishes, tag=!pink.pufferfish] run scoreboard players set @s pink_timer 18
execute if score @s pink_timer matches 10..15 unless entity @e[distance=..6, type=!#not_mob, team=!pink_ghost_team, tag=!pink.fishes, tag=!pink.pufferfish] run scoreboard players set @s pink_timer 10

execute if score @s pink_timer matches 20 run effect give @s slowness 8 3 true
execute if score @s pink_timer matches 20 run effect give @s glowing 8 1 true

execute if score @s pink_timer matches 60 as @s run data merge entity @s {Motion:[0.0, 0.6, 0.0]}
execute if score @s pink_timer matches 80 run function pink:mob/ghost_strongman/attack

execute if score @s pink_timer matches 100 as @s run data merge entity @s {Motion:[0.0, 0.6, 0.0]}
execute if score @s pink_timer matches 120 run function pink:mob/ghost_strongman/attack

execute if score @s pink_timer matches 140 as @s run data merge entity @s {Motion:[0.0, 0.6, 0.0]}
execute if score @s pink_timer matches 160 run function pink:mob/ghost_strongman/attack

execute if score @s pink_timer matches 400.. run scoreboard players set @s pink_timer 0

# ================================================================================

scoreboard players add @s pink_debug 1


execute if score @s pink_debug matches 5 if block ~ ~3 ~ #minecraft:replaceable if block ~ ~4 ~ #minecraft:replaceable if entity @e[type=creeper, tag=pink.ghost_bomb, distance=..3, sort=nearest] run scoreboard players set @s pink_debug 10

execute if score @s pink_debug matches 6..9 run scoreboard players set @s pink_debug 0

execute if score @s pink_debug matches 10..30 run function pink:mob/ghost_strongman/throw_creeper/get_creeper

execute if score @s pink_debug matches 30 as @e[type=creeper, tag=pink.ghost_bomb, limit=1, sort=nearest, distance=..4] run function pink:mob/ghost_strongman/throw_creeper/cal

execute if score @s pink_debug matches 100.. run scoreboard players set @s pink_debug 0

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:4,MaxNearbyEntities:4,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:1600,MaxSpawnDelay:2000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:drowned",Team:"pink_ghost_team",PersistenceRequired:1b,Health:48f,IsBaby:0b,CanBreakDoors:1b,Tags:["pink.ghost_strongman"],CustomName:{"bold":true,"color":"#FF0AD6","italic":false,"shadow_color":-16283029,"text":"**幽靈力士**","underlined":true},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":5341194,"minecraft:enchantment_glint_override":true}},head:{id:"minecraft:crimson_pressure_plate",count:1}},drop_chances:{chest:0.000,head:0.000},attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:follow_range",base:20},{id:"minecraft:knockback_resistance",base:0.4},{id:"minecraft:explosion_knockback_resistance",base:0.4},{id:"minecraft:max_health",base:48},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:safe_fall_distance",base:12},{id:"minecraft:scale",base:1.4}]}},weight:1}]}] 1