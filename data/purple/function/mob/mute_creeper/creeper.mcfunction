effect give @s luck 1 110 true
scoreboard players add @s purple_timer 1
execute if score @s purple_timer matches 10 at @s run summon marker ~ ~ ~ {Tags:[purple.silence_marker]}
execute if score @s purple_timer matches 40.. run scoreboard players set @s purple_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:4,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:1200,MaxSpawnDelay:1400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Health:16f,Fuse:20,Tags:["purple.mobs","purple.mute_creeper"],CustomName:{"bold":true,"color":"#D970FF","italic":false,"shadow_color":-10912367,"translate":"噤聲苦力怕","underlined":true},attributes:[{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:attack_damage",base:20}]}},weight:1}]}] 1