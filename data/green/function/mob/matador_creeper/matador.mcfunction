scoreboard players add @s green_debug 1
execute unless predicate green:is_sitting run scoreboard players add @s green_timer 1

execute if score @s green_debug matches 295 run tp ~ ~0.5 ~ 
execute if score @s green_debug matches 300 run data merge entity @s {Motion:[0.0, 1.0, 0.0]} 

execute if score @s green_timer matches 10..15 if entity @e[tag=!green.is_party_creeper, tag=!green.not_party_creeper, type=!#minecraft:not_mob ,distance=..30] at @s run scoreboard players set @s green_timer 16
execute if score @s green_timer matches 10..15 unless entity @e[tag=!green.is_party_creeper, tag=!green.not_party_creeper, type=!#minecraft:not_mob ,distance=..30] at @s run scoreboard players set @s green_timer 10

execute if score @s green_timer matches 20 run effect give @s glowing 2 1 true 
execute if score @s green_timer matches 60..80 run tp @s ^ ^ ^ facing entity @p
execute if score @s green_timer matches 60 at @s run function green:mob/matador_creeper/shoot
execute if score @s green_timer matches 80 at @s run function green:mob/matador_creeper/shoot

execute if score @s green_timer matches 400.. run scoreboard players set @s green_timer 0

execute as @e[type=trident, distance=..6, tag=green.matador_creeper_trident] at @s run function green:mob/matador_creeper/trident

# execute if score @s green_debug matches 6000 run data merge entity @s {ignited:1b}

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:4,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:5000,MaxSpawnDelay:6000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:ravager",Team:"green_matador",PersistenceRequired:1b,Health:120f,Motion:[0.0,2.0,0.0],Tags:["green.not_party_creeper","green.bull"],Passengers:[{id:"minecraft:creeper",HasVisualFire:1b,PersistenceRequired:1b,Team:"green_matador",powered:1b,Health:60f,ExplosionRadius:4b,Fuse:60,Tags:["green.not_party_creeper","green.matador_creeper"],CustomName:{"bold":true,"color":"#588C42","italic":false,"shadow_color":-5185493,"text":"***鬥牛士苦力怕***","underlined":true},active_effects:[{id:"minecraft:resistance",amplifier:10,duration:60}],equipment:{head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{"blast_protection":100,"projectile_protection":100,"vanishing_curse":1}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:enchantments":{"blast_protection":100,"projectile_protection":100,"vanishing_curse":1}}}},attributes:[{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:follow_range",base:50},{id:"minecraft:max_health",base:60},{id:"minecraft:movement_efficiency",base:1}]}],CustomName:{"bold":true,"color":"#6fa864","italic":false,"shadow_color":-14072793,"text":"***晶黑鬥牛***","underlined":true},equipment:{head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{"blast_protection":100,"projectile_protection":100,"vanishing_curse":1}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:enchantments":{"blast_protection":100,"projectile_protection":100,"vanishing_curse":1}}}},drop_chances:{head:0.000},active_effects:[{id:"minecraft:resistance",amplifier:10,duration:60}],attributes:[{id:"minecraft:armor",base:6},{id:"minecraft:armor_toughness",base:6},{id:"minecraft:attack_damage",base:10},{id:"minecraft:attack_knockback",base:0.6},{id:"minecraft:follow_range",base:50},{id:"minecraft:knockback_resistance",base:0.4},{id:"minecraft:max_health",base:120},{id:"minecraft:movement_speed",base:0.1},{id:"minecraft:scale",base:1.2},{id:"minecraft:step_height",base:1.5}]}},weight:1}]}] 1