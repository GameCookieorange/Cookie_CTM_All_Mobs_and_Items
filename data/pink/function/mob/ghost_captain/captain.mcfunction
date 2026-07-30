scoreboard players add @s pink_timer 1

execute if score @s pink_timer matches 10..15 if entity @e[distance=..20, type=!#not_mob, team=!pink_ghost_team, tag=!pink.fishes] run scoreboard players set @s pink_timer 16
execute if score @s pink_timer matches 10..15 unless entity @e[distance=..20, type=!#not_mob, team=!pink_ghost_team, tag=!pink.fishes] run scoreboard players set @s pink_timer 10

execute if score @s pink_timer matches 20 run effect give @s glowing 1 0 true

execute if score @s pink_timer matches 20 run playsound entity.drowned.hurt hostile @a ~ ~ ~ 3 1.5
execute if score @s pink_timer matches 20 run playsound entity.drowned.hurt hostile @a ~ ~ ~ 3 1.5
execute if score @s pink_timer matches 30 run playsound entity.drowned.hurt hostile @a ~ ~ ~ 2 1.2
execute if score @s pink_timer matches 30 run playsound entity.drowned.hurt hostile @a ~ ~ ~ 2 1.2

execute if score @s pink_timer matches 40 as @e[team=!pink_ghost_team, type=!#not_mob, distance=..30, limit=1, sort=nearest, tag=!pink.fishes] at @s run summon armor_stand ~ ~ ~ {Tags:["pink.lightning_marker"],Marker:1b,Invisible:1b}
execute if score @s pink_timer matches 40 as @e[team=!pink_ghost_team, type=!#not_mob, distance=..30, limit=1, sort=nearest, tag=!pink.fishes] at @s run summon armor_stand ~ ~ ~ {Tags:["pink.lightning_marker"], Marker:1b,Invisible:1b}
execute if score @s pink_timer matches 40 as @e[team=!pink_ghost_team, type=!#not_mob, distance=..30, limit=1, sort=nearest, tag=!pink.fishes] at @s run summon armor_stand ~ ~ ~ {Tags:["pink.lightning_marker"], Marker:1b,Invisible:1b}

execute if score @s pink_timer matches 300.. run scoreboard players set @s pink_timer 0

# give @a cookie

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:5,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1800,MaxSpawnDelay:2000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:drowned",Team:"pink_ghost_team",PersistenceRequired:1b,Health:40f,IsBaby:0b,CanBreakDoors:1b,Tags:["pink.drowned_captain"],CustomName:{"bold":true,"color":"#EB81B9","italic":false,"shadow_color":-15165814,"text":"**幽靈船船長**","underlined":true},equipment:{feet:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:ward"}}},chest:{id:"minecraft:diamond_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:tide"},"minecraft:enchantments":{"fire_protection":3}}},head:{id:"minecraft:black_banner",count:1,components:{banner_patterns:[{"pattern":"gradient","color":"lime"},{"pattern":"globe","color":"green"},{"pattern":"curly_border","color":"cyan"},{"pattern":"skull","color":"black"},{"pattern":"border","color":"black"},{"pattern":"gradient_up","color":"cyan"}]}},mainhand:{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantments":{"knockback":1}}},offhand:{id:"minecraft:filled_map",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{feet:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:armor_toughness",base:2},{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:28},{id:"minecraft:knockback_resistance",base:0.4},{id:"minecraft:max_health",base:40},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:water_movement_efficiency",base:0.8}]}},weight:1}]}] 1

# /give @p minecraft:black_banner[banner_patterns=[{"pattern":"gradient","color":"lime"},{"pattern":"globe","color":"green"},{"pattern":"curly_border","color":"cyan"},{"pattern":"skull","color":"gray"},{"pattern":"border","color":"black"},{"pattern":"gradient_up","color":"cyan"}]] 1