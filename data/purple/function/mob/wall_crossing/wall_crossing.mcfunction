scoreboard players add @s purple_timer 1

execute if score @s purple_timer matches 10..15 if entity @e[type=#minecraft:attack_entity, sort=nearest, limit=1, distance=..30] run scoreboard players set @s purple_timer 16
execute if score @s purple_timer matches 10..15 unless entity @e[type=#minecraft:attack_entity, sort=nearest, limit=1, distance=..30] run scoreboard players set @s purple_timer 0

execute if score @s purple_timer matches 40 run effect give @s glowing 2 1 true

execute if score @s purple_timer matches 40..60 if block ~ ~1 ~ #minecraft:passable run data modify entity @s[tag=!purple.in_wall] Silent set value true
execute if score @s purple_timer matches 61 run data modify entity @s[tag=!purple.in_wall] Silent set value false

execute if score @s purple_timer matches 40..60 run tp @s ^ ^ ^0.1 facing entity @p eyes


execute unless block ~ ~1 ~ #minecraft:passable run function purple:mob/wall_crossing/in_wall

execute if block ~ ~1 ~ #minecraft:passable run function purple:mob/wall_crossing/not_in_wall

execute if score @s purple_timer matches 500 unless block ~ ~1 ~ #minecraft:passable run spreadplayers ~ ~ 20 20 false @s

execute if score @s purple_timer matches 600.. run scoreboard players set @s purple_timer 0
effect clear @s[tag=!purple.in_wall, nbt={active_effects:[{"id":"minecraft:glowing"}]}] glowing

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:5,RequiredPlayerRange:24,Delay:0,MinSpawnDelay:1600,MaxSpawnDelay:1800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:husk",Health:40f,DrownedConversionTime:-1,Tags:["purple.mobs","purple.wall_crossing"],CustomName:{"bold":true,"color":"#CE97DB","italic":false,"shadow_color":-15463865,"translate":"穿牆人","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":4009222}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":5391654}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":8220480}},head:{id:"minecraft:purple_stained_glass",count:1,components:{"minecraft:enchantments":{"fire_protection":1,"aqua_affinity":1,"respiration":3}}},mainhand:{id:"minecraft:iron_shovel",count:1,components:{"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},Team:"purple.not_being_snipe",attributes:[{id:"minecraft:follow_range",base:20},{id:"minecraft:attack_damage",base:5},{id:"minecraft:movement_speed",base:0.22},{id:"minecraft:max_health",base:40},{id:"minecraft:safe_fall_distance",base:40}]}},weight:1}]}] 1