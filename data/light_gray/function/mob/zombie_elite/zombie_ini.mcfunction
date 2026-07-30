scoreboard players add @s light_gray_timer 1

execute if score @s light_gray_timer matches 1..20 run particle campfire_cosy_smoke ~ ~1 ~ 0.05 0.05 0.05 0.02 2

execute if score @s light_gray_timer matches 20 run execute unless entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..16] run scoreboard players set @s light_gray_timer 0
execute if score @s light_gray_timer matches 20 run execute if entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..16] run scoreboard players set @s light_gray_timer 25

execute if score @s light_gray_timer matches 30 run effect give @s minecraft:glowing 3 1 true

execute if score @s light_gray_timer matches 46 at @s facing entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..20, sort=nearest, limit=1] eyes run tp @s ~ ~ ~ ~ ~

# ======================================================

# execute if score @s orange_timer matches 49 at @s run data modify entity @s {Motion:[0.0,0.0,0.8]} set from entity @p Pos

# ======================================================

execute if score @s light_gray_timer matches 46 at @s run playsound minecraft:entity.iron_golem.hurt ambient @a ~ ~ ~ 2 2

# ======================================================

execute if score @s light_gray_timer matches 50 run function light_gray:mob/zombie_elite/summon_destroyer

execute if score @s light_gray_timer matches 56 at @s run playsound minecraft:entity.iron_golem.hurt ambient @a ~ ~ ~ 2 2


execute if score @s light_gray_timer matches 60 run function light_gray:mob/zombie_elite/summon_destroyer_far


# ======================================================

execute if score @s light_gray_timer matches 200.. run scoreboard players set @s light_gray_timer 0

# give @a cookie

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:2,MaxNearbyEntities:2,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:1200,MaxSpawnDelay:1600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:drowned",Team:"light_gray_machine_team",PersistenceRequired:1b,Health:16f,IsBaby:0b,CanBreakDoors:1b,Tags:["light_gray.machine.elite_zombie"],CustomName:{"bold":true,"color":"#A8A8A8","italic":false,"shadow_color":-8901471,"text":"**重型殲滅程序**","underlined":true},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:rib"}}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:rib"}}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:rib"},"minecraft:enchantments":{"projectile_protection":10}}},head:{id:"minecraft:trial_spawner",count:1},mainhand:{id:"minecraft:chiseled_stone_bricks",count:1},offhand:{id:"minecraft:chiseled_stone_bricks",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:knockback_resistance",base:0.4},{id:"minecraft:max_health",base:16},{id:"minecraft:armor",base:8}]}},weight:1}]}] 1