scoreboard players add @s pink_timer 1
scoreboard players add @s pink_debug 1

execute if score @s pink_timer matches 10..15 if entity @e[distance=..10, type=!#not_mob, team=!pink_ghost_team, tag=!pink.fishes, tag=!pink.pufferfish] run scoreboard players set @s pink_timer 16
execute if score @s pink_timer matches 10..15 unless entity @e[distance=..10, type=!#not_mob, team=!pink_ghost_team, tag=!pink.fishes, tag=!pink.pufferfish] run scoreboard players set @s pink_timer 10

execute if score @s pink_timer matches 20 run effect give @s glowing 2 0 true

execute if score @s pink_timer matches 60 run tp @s ^ ^ ^ facing entity @e[distance=..40, type=!#not_mob, team=!pink_ghost_team, limit=1, sort=nearest, tag=!pink.fishes, tag=!pink.pufferfish] eyes

execute if score @s pink_timer matches 60 run function pink:mob/ghost_bomb/cal

execute if score @s pink_timer matches 200.. run scoreboard players set @s pink_timer 0

execute if score @s pink_debug matches 10 at @s run particle dust{color:[0.039,0.749,0.369],scale:1} ~ ~1 ~ 0.4 0.4 0.4 0.02 10 normal
execute if score @s pink_debug matches 20.. run scoreboard players set @s pink_debug 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:5,MaxNearbyEntities:10,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:700,MaxSpawnDelay:900,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Team:"pink_ghost_team",Health:16f,Fuse:25,Tags:["pink.ghost_bomb"],CustomName:{"bold":true,"color":"#FF8CBE","italic":false,"shadow_color":-16010396,"text":"幽靈揮發物","underlined":true},equipment:{head:{id:"minecraft:blackstone_stairs",count:1},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:enchantments":{"blast_protection":8}}}},drop_chances:{head:0.000,chest:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:20},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:safe_fall_distance",base:10},{id:"minecraft:scale",base:0.9},{id:"minecraft:water_movement_efficiency",base:0.6}]}},weight:1}]}] 1


