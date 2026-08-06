scoreboard players add @s light_blue_timer 1

execute if entity @a[distance=..7] if score @s light_blue_timer matches 2..3 run scoreboard players set @s light_blue_timer 5
execute unless entity @a[distance=..7] if score @s light_blue_timer matches 2..3 run scoreboard players set @s light_blue_timer 2

execute if score @s light_blue_timer matches 6 run data modify entity @s angry_at set from entity @a[distance=..10, limit=1, sort=nearest] UUID

execute if score @s light_blue_timer matches 300.. run scoreboard players set @s light_blue_timer 2

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:5,SpawnRange:12,MaxNearbyEntities:24,RequiredPlayerRange:10,Delay:2,MinSpawnDelay:1400,MaxSpawnDelay:1600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:wolf",OnGround:1b,Health:10f,anger_end_time:600,variant:"snowy",sound_variant:"angry",Tags:["light_blue.mob","light_blue.wolf"],CustomName:{"bold":true,"color":"#73DAFF","italic":false,"shadow_color":-8289636,"text":"北極狼","underlined":true},attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_efficiency",base:1},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:1.3}]}},weight:1}]}] 1