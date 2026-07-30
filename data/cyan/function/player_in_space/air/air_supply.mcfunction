scoreboard players add @s cyan_debug 1

# particle minecraft:current_down ~ ~ ~ 0.3 1 0.3 0 20 force
particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0 3 normal
particle minecraft:bubble_pop ~ ~ ~ 0.2 1 0.2 0 5 normal


tp @s ~ ~0.1 ~

execute as @a[distance=..2, tag=cyan.start_breath] at @s run scoreboard players add @s cyan_player_air_timer 10
execute as @a[distance=..2, tag=cyan.start_breath] at @s run effect give @s regeneration 2 1 false


execute if score @s cyan_debug matches 200.. run kill @s

# execute as @a[distance=..2.5, tag=cyan.start_breath] at @s run playsound entity.player.breath player @a ~ ~ ~ 0.2 1

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:0,MaxNearbyEntities:10,RequiredPlayerRange:20,Delay:0,MinSpawnDelay:60,MaxSpawnDelay:60,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:marker",Tags:["cyan.air"]}},weight:1}]}] 1