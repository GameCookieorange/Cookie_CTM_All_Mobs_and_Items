particle minecraft:firefly ~ ~ ~ 1 1 1 2 3

scoreboard players add @s orange_timer 1

execute if score @s orange_timer matches 10..15 run execute if entity @e[distance=..14, type=!#not_mob, tag=!orange.wind.charge.elite.zombie] run scoreboard players set @s orange_timer 16

execute if score @s orange_timer matches 10..15 run execute unless entity @e[distance=..14, type=!#not_mob, tag=!orange.wind.charge.elite.zombie] run scoreboard players set @s orange_timer 10

team join orange_wind_charge_drowned @s

execute if score @s orange_timer matches 20 run effect give @s minecraft:glowing 4 1 true

execute if score @s orange_timer matches 30 at @s facing entity @e[type=!#not_mob, sort=nearest, limit=1, tag=!orange.wind.charge.elite.zombie] eyes run tp @s ~ ~ ~ ~ ~

# execute if score @s orange_timer matches 40 run function thecookieorange:mob/zombie_elite/back_


execute if score @s orange_timer matches 45 at @s facing entity @e[type=!#not_mob, sort=nearest, limit=1, tag=!orange.wind.charge.elite.zombie] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s orange_timer matches 60 at @s facing entity @e[type=!#not_mob, sort=nearest, limit=1, tag=!orange.wind.charge.elite.zombie] eyes run tp @s ~ ~ ~ ~ ~

# execute if score @s orange_timer matches 60..61 at @s facing entity @e[type=!#not_mob, sort=nearest, limit=1, tag=!orange.wind.charge.elite.zombie] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s orange_timer matches 86 at @s facing entity @e[type=!#not_mob, sort=nearest, limit=1, tag=!orange.wind.charge.elite.zombie] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s orange_timer matches 100 at @s facing entity @e[type=!#not_mob, sort=nearest, limit=1, tag=!orange.wind.charge.elite.zombie] eyes run tp @s ~ ~ ~ ~ ~

# execute if score @s orange_timer matches 100..101 at @s facing entity @e[type=!#not_mob, sort=nearest, limit=1, tag=!orange.wind.charge.elite.zombie] eyes run tp @s ~ ~ ~ ~ ~

# ======================================================

execute if score @s orange_timer matches 46 at @s run playsound minecraft:entity.iron_golem.hurt ambient @a ~ ~ ~ 1 1.5

execute if score @s orange_timer matches 46 run function thecookieorange:mob/zombie_elite/calculate_motion_jump



execute if score @s orange_timer matches 60 run function thecookieorange:mob/zombie_elite/calculate_motion

execute if score @s orange_timer matches 70 at @s run playsound cookieorange_res:custom.sky_claymore_hit hostile @a ~ ~ ~ 2 1.2

execute if score @s orange_timer matches 70 at @s run particle minecraft:sweep_attack ~ ~1 ~ 2 2 2 1 10 normal

execute if score @s orange_timer matches 70 run execute as @e[type=!#minecraft:not_mob, sort=nearest, distance=..4, tag=!orange.wind.charge.elite.zombie] at @s run damage @s 3.5 mob_attack by @n[tag=orange.wind.charge.elite.zombie, type=zombie, limit=1, sort=nearest]

# ======================================================

execute if score @s orange_timer matches 72 at @s facing entity @e[type=!#not_mob, sort=nearest, limit=1, tag=!orange.wind.charge.elite.zombie] eyes run tp @s ~ ~ ~ ~ ~

execute if score @s orange_timer matches 76 run function thecookieorange:mob/zombie_elite/back_

execute if score @s orange_timer matches 80 run function thecookieorange:mob/zombie_elite/back_

execute if score @s orange_timer matches 86 at @s run playsound minecraft:entity.iron_golem.hurt ambient @a ~ ~ ~ 1 1.5

execute if score @s orange_timer matches 86 run function thecookieorange:mob/zombie_elite/calculate_motion_jump_2

execute if score @s orange_timer matches 100 run function thecookieorange:mob/zombie_elite/calculate_motion_2

execute if score @s orange_timer matches 110 at @s run playsound cookieorange_res:custom.sky_claymore_hit hostile @a ~ ~ ~ 1 0.5


execute if score @s orange_timer matches 110..111 at @s run particle minecraft:sweep_attack ~ ~1 ~ 2 2 2 1 10 normal

execute if score @s orange_timer matches 110 run execute as @e[type=!#minecraft:not_mob, sort=nearest, distance=..4, tag=!orange.wind.charge.elite.zombie] at @s run damage @s 7 mob_attack by @n[tag=orange.wind.charge.elite.zombie, type=zombie, limit=1, sort=nearest]

# ======================================================

execute if score @s orange_timer matches 200.. run scoreboard players set @s orange_timer 0


# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:4,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:2000,MaxSpawnDelay:3000,SpawnData:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",DeathLootTable:"thecookieorange:mobs/elite_zombie",PersistenceRequired:1b,Health:60f,Tags:["orange.wind.charge.elite.zombie"],CustomName:{"bold":true,"color":"dark_purple","italic":false,"shadow_color":-1762026680,"translate":"entity.cookieorange_res.orange_wind_charge_elite_zombie","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":10225672}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:dyed_color":8862238,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:wild"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:ward"}}},head:{id:"minecraft:orange_banner",count:1},mainhand:{id:"minecraft:iron_spear",count:1},offhand:{id:"minecraft:totem_of_undying",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:hero_of_the_village",amplifier:0,duration:60000,show_particles:1b}],attributes:[{id:"safe_fall_distance",base:40},{id:"minecraft:attack_damage",base:0},{id:"minecraft:max_health",base:60},{id:"minecraft:movement_speed",base:0.28},{id:"minecraft:knockback_resistance",base:0.4}]}}}] 1