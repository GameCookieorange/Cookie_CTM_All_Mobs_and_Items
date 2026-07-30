
execute as @s run effect give @s minecraft:luck 1 40 true

execute at @s run particle snowflake ~ ~1 ~ 0.75 0.75 0.75 0.01 1 normal

scoreboard players add @s light_blue_timer 1

execute if score @s light_blue_timer matches 180 run data modify entity @s TicksFrozen set value 0

execute if score @s light_blue_timer matches 181.. run scoreboard players set @s light_blue_timer 0

# execute as @s[nbt={ignited:0b}] run scoreboard players set @s light_blue_timer 0

# execute if entity @s[nbt={HurtTime:10s}] at @s run scoreboard players set @e[tag=light_blue.powder_snow_creeper_marker, distance=..3] light_blue_debug 0 

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:5,MaxNearbyEntities:8,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Health:16f,Fuse:30,ExplosionRadius:0b,Tags:["light_blue.powder_snow_creeper"],Passengers:[{id:"minecraft:marker",Silent:1b,Tags:["light_blue.powder_snow_creeper_marker"]}],CustomName:{"bold":true,"color":"#9CE1FF","italic":false,"shadow_color":-9012798,"text":"粉雪苦力怕","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1}},drop_chances:{feet:0.000},attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:4},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:safe_fall_distance",base:6}]}},weight:1}]}] 1