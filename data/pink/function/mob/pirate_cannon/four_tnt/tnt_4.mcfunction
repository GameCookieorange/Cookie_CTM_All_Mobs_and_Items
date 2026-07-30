scoreboard players add @s pink_debug 1

execute if score @s pink_debug matches 1 run function pink:mob/pirate_cannon/four_direction/cal_4

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:1,RequiredPlayerRange:30,Delay:1,MinSpawnDelay:60,MaxSpawnDelay:200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:tnt",fuse:50,Tags:["pink.pirate_cannon_4"]}},weight:1}]}] 1