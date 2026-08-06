scoreboard players add @s light_blue_timer 1
scoreboard players add @s light_blue_debug 1
scoreboard players add @s light_blue_skill 1

particle snowflake ~ ~ ~ 0.5 0.5 0.5 0.01 1 normal
effect give @e[distance=..6, type=player] slowness 1 1 true
particle dust_color_transition{from_color:[0.000,0.733,1.000],to_color:[0.031,0.000,1.000],scale:2} ~ ~ ~ 0 0 0 0 10 normal


# =====================

execute if score @s light_blue_timer matches 1 run summon marker ~ ~ ~ {Tags:["light_blue.mob","light_blue.ice_generator_marker"]}

execute if score @s light_blue_timer matches 1.. at @s run scoreboard players set @s light_blue_timer 0

# =====================

execute if score @s light_blue_skill matches 40 run particle cloud ~ ~ ~ 0.8 0.8 0.8 0.8 200 normal
# execute if score @s light_blue_skill matches 49 run execute as @e[type=#attack_entity, distance=..4] run damage @s 0.1 mob_attack by @n[tag=light_blue.ice_generator, limit=1, sort=nearest]
execute if score @s light_blue_skill matches 40 run execute as @e[type=#attack_entity, distance=..6] run damage @s 6 freeze by @n[tag=light_blue.ice_generator, limit=1, sort=nearest]

execute if score @s light_blue_skill matches 40.. run scoreboard players set @s light_blue_skill 0

# =====================

execute if score @s light_blue_debug matches 201.. at @s run kill @s


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:2,MaxNearbyEntities:4,RequiredPlayerRange:12,Delay:1,MinSpawnDelay:2000,MaxSpawnDelay:2200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",Silent:1b,PersistenceRequired:1b,Health:24f,InWaterTime:999999,Tags:["light_blue.mob","light_blue.ice_generator_zombie","light_blue.ice_zombie"],Passengers:[{id:"minecraft:marker",Tags:["light_blue.mob","light_blue.ice_generator"],CustomName:{"bold":true,"color":"#75DAE6","italic":false,"shadow_color":-14064897,"text":"**寒天核心**","underlined":true}}],CustomName:{"bold":true,"color":"#75DAE6","italic":false,"shadow_color":-14064897,"text":"**寒天核心**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:24},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:scale",base:1.2},{id:"minecraft:step_height",base:1.2}]}},weight:1}]}] 1