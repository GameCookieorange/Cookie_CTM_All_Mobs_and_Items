# particle minecraft:firefly ~ ~ ~ 1 1 1 2 1 force

scoreboard players add @s gray_timer 1

execute if score @s gray_timer matches 10..15 at @s if entity @e[type=#minecraft:attack_entity ,distance=..16, team=!gray_cloud_mobs] run scoreboard players set @s gray_timer 20
execute if score @s gray_timer matches 10..15 at @s unless entity @e[type=#minecraft:attack_entity ,distance=..16, team=!gray_cloud_mobs] run scoreboard players set @s gray_timer 10

execute if score @s gray_timer matches 21 run effect give @s minecraft:glowing 2 1 true

execute if score @s gray_timer matches 60 at @s run playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 0.8 1.6
execute if score @s gray_timer matches 60 at @s run playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 0.8 0.7

# ======================================================

execute if score @s gray_timer matches 50..60 at @s facing entity @e[type=#minecraft:attack_entity ,distance=..30, team=!gray_cloud_mobs] feet run tp @s ~ ~ ~ ~ ~

# ======================================================

execute if score @s gray_timer matches 20..30 at @s run particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0.6 1
# execute if score @s gray_timer matches 20..40 at @s run particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0.2 2
execute if score @s gray_timer matches 35..60 at @s run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.15 2
particle minecraft:firefly ~ ~1 ~ 0.3 0.3 0.3 0.2 2

execute if score @s gray_timer matches 60 run function gray:mob/zombie/calculate_motion

# execute if score @s gray_timer matches 90 run tp ~ ~ ~
execute if score @s gray_timer matches 90 at @s run playsound minecraft:entity.breeze.idle_ground hostile @a ~ ~ ~ 0.8 0.8


execute if score @s gray_timer matches 100 run function gray:mob/zombie/calculate_motion_back

execute if score @s gray_timer matches 115 run tp ~ ~ ~

# ======================================================

execute if score @s gray_timer matches 120.. run scoreboard players set @s gray_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:5,MaxNearbyEntities:6,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:700,MaxSpawnDelay:800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",NoGravity:1b,Silent:1b,Health:16f,Team:"gray_cloud_mobs",Tags:["gray.surge_spirit"],CustomName:{"bold":true,"color":"#a9a9a9","shadow_color":-8892811,"translate":"雲湧亡靈"},equipment:{chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:iron",pattern:"minecraft:bolt"},enchantments:{protection:5}}},head:{id:"minecraft:iron_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:bolt"}}},mainhand:{id:"minecraft:wooden_spear",count:1,components:{"minecraft:damage":1,"minecraft:attack_range":{min_reach:0.0,max_reach:2.0}}}},drop_chances:{chest:0.000,head:0.000,mainhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:2},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:explosion_knockback_resistance",base:0},{id:"minecraft:follow_range",base:40},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:safe_fall_distance",base:100}]}},weight:1}]}] 1
