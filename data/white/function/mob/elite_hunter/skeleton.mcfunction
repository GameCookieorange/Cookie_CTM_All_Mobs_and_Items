# scoreboard players add @s white_timer 1

# execute as @s[tag=taking_sword] at @s unless entity @p[distance=..7] run tag @s remove taking_sword
execute as @s[tag=taking_sword] at @s unless entity @e[team=white_forest_creature, type=!allay, type=!phantom, distance=..6] unless entity @p[distance=..6] run tag @s remove taking_sword
execute as @s[tag=!taking_sword] at @s unless items entity @s weapon.mainhand bow run item replace entity @s weapon.mainhand with bow 1

execute as @s[tag=!taking_sword] at @s if entity @p[distance=..6] run tag @s add taking_sword
execute as @s[tag=!taking_sword] at @s if entity @e[team=white_forest_creature, type=!allay, type=!phantom, distance=..6] run tag @s add taking_sword

execute as @s[tag=taking_sword] at @s unless items entity @s weapon.mainhand wooden_sword run item replace entity @s weapon.mainhand with wooden_sword 1


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:16,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1000,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:skeleton",Team:"white_invade_creature",PersistenceRequired:1b,Health:24f,Tags:["white.mob","white.elite_hunter"],CustomName:{"bold":true,"color":"#FCFFFD","italic":false,"shadow_color":-6438317,"text":"**精銳獵手**","underlined":false},equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather",count:4},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":9813267}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":8041239}},mainhand:{id:"minecraft:bow",count:1}},drop_chances:{feet:0.000,legs:1.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:max_health",base:24},{id:"minecraft:safe_fall_distance",base:10}]}},weight:1}]}] 1