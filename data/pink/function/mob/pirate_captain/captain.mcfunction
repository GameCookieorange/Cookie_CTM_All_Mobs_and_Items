scoreboard players add @s pink_timer 1

execute if score @s pink_timer matches 1 run execute store result score @s pink_pirate_captain run data get entity @s UUID

execute if score @s pink_timer matches 200 run scoreboard players set @s pink_timer 2

# give @a gray_banner[banner_patterns=[{pattern:gradient,color:pink},{pattern:curly_border,color:gray},{pattern:rhombus,color:pink},{pattern:flower,color:red},{pattern:skull,color:black},{pattern:gradient_up,color:gray}]]

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:5,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1800,MaxSpawnDelay:2000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:evoker",DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Team:"pink_pirate_team",Health:40f,Tags:["pink.pirate_captain"],CustomName:{"bold":true,"color":"#fa8cc4","italic":false,"shadow_color":-10927784,"text":"**海盜船船長**","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{"projectile_protection":2}}},head:{id:"minecraft:gray_banner",count:1,components:{banner_patterns:[{pattern:gradient,color:pink},{pattern:curly_border,color:gray},{pattern:rhombus,color:pink},{pattern:flower,color:red},{pattern:skull,color:black},{pattern:gradient_up,color:gray}]}}},drop_chances:{feet:0.000,head:0.000},attributes:[{id:"minecraft:armor_toughness",base:2},{id:"minecraft:follow_range",base:34},{id:"minecraft:max_health",base:40},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:water_movement_efficiency",base:0.2}]}},weight:1}]}] 1
