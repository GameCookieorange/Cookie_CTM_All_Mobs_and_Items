scoreboard players add @s brown_timer 1

execute if score @s brown_timer matches 10..15 if entity @e[type=!#minecraft:not_mob,tag=!brown.steampunk, distance=..16] run scoreboard players set @s brown_timer 16
execute if score @s brown_timer matches 10..15 unless entity @e[type=!#minecraft:not_mob, tag=!brown.steampunk, distance=..16] run scoreboard players set @s brown_timer 10

execute if score @s brown_timer matches 20..60 at @s run particle campfire_signal_smoke ~ ~1.2 ~ 0.5 0.5 0.5 0 1
execute if score @s brown_timer matches 20 run effect give @s glowing 5 1 true

execute if score @s brown_timer matches 60 at @s run function brown:saboteur/dash_attack/dash_ini
execute if score @s brown_timer matches 60..120 run function brown:saboteur/dash_attack/dash_marco with entity @s data

execute if score @s brown_timer matches 70 at @s run summon marker ~ ~1.2 ~ {Tags:[brown.saboteur_hint_marker]}
execute if score @s brown_timer matches 80 at @s run summon marker ~ ~1.2 ~ {Tags:[brown.saboteur_hint_marker]}
execute if score @s brown_timer matches 90 at @s run summon marker ~ ~1.2 ~ {Tags:[brown.saboteur_hint_marker]}
execute if score @s brown_timer matches 100 at @s run summon marker ~ ~1.2 ~ {Tags:[brown.saboteur_hint_marker]}
execute if score @s brown_timer matches 120 at @s run playsound entity.wither.hurt hostile @a ~ ~ ~ 1.2 0.3
execute if score @s brown_timer matches 120 at @s run tag @s add brown.saboteur_dash_start

execute if score @s brown_timer matches 300.. at @s run scoreboard players set @s brown_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:3,MaxNearbyEntities:2,RequiredPlayerRange:20,Delay:0,MinSpawnDelay:3600,MaxSpawnDelay:4200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:piglin_brute",Team:"brown_steampunk",PersistenceRequired:1b,Health:50f,IsImmuneToZombification:1b,Tags:["brown.steampunk","brown.saboteur"],CustomName:{"bold":true,"color":"#B85000","italic":false,"shadow_color":-10600161,"translate":"**結構破壞者**","underlined":true},equipment:{feet:{id:"minecraft:copper_boots",count:1,components:{"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:ward"},"minecraft:enchantments":{"soul_speed":2,"vanishing_curse":1}}},legs:{id:"minecraft:copper_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"},"minecraft:enchantments":{"vanishing_curse":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:silence"},"minecraft:enchantments":{"fire_protection":4,"projectile_protection":2,"vanishing_curse":1}}},head:{id:"minecraft:blast_furnace",count:1,components:{"minecraft:enchantments":{"fire_protection":10,"vanishing_curse":1}}},mainhand:{id:"minecraft:deepslate_copper_ore",count:1,components:{"minecraft:enchantments":{"fire_aspect":1,"vanishing_curse":1}}},offhand:{id:"minecraft:raw_copper",count:1,components:{"minecraft:enchantments":{"fire_aspect":1,"vanishing_curse":1}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:max_health",base:50},{id:"minecraft:attack_damage",base:10},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:safe_fall_distance",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:knockback_resistance",base:0.3}]}},weight:1}]}] 1