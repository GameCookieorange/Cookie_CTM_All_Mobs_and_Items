# particle minecraft:firefly ~ ~ ~ 1 1 1 2 1 force

scoreboard players add @s orange_timer 1

team join orange_wind_charge_zombie

execute if score @s orange_timer matches 40 run effect give @s minecraft:glowing 1 1 true

execute if score @s orange_timer matches 40 at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~

execute if score @s orange_timer matches 40 at @s run playsound minecraft:entity.wither.shoot ambient @a ~ ~ ~ 0.6 1.5

# ======================================================

execute if score @s orange_timer matches 40..50 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~

# execute if score @s orange_timer matches 49 at @s run data modify entity @s {Motion:[0.0,0.0,0.8]} set from entity @p Pos

# ======================================================

# execute if score @s orange_timer matches 49 run function thecookieorange:mob/zombie/calculate_motion

# ======================================================

execute if score @s orange_timer matches 51..55 at @s run particle minecraft:cloud ~ ~0.5 ~ 0.5 0.5 0.5 0.05 5

execute if score @s orange_timer matches 40..45 at @s run tp @s ^0.4 ^ ^0.5

execute if score @s orange_timer matches 46..50 at @s run tp @s ^ ^ ^0.5

execute if score @s orange_timer matches 51..54 at @s run tp @s ^ ^ ^0.4

# execute if score @s orange_timer matches 51 run function thecookieorange:mob/zombie/calculate_motion

# ======================================================

execute if score @s orange_timer matches 75.. run scoreboard players set @s orange_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:5,MaxNearbyEntities:6,RequiredPlayerRange:10,Delay:10,MinSpawnDelay:350,MaxSpawnDelay:440,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},equipment:{slot_drop_chances:{chest:0,head:0}},entity:{id:"minecraft:zombie",NoGravity:1b,Silent:1b,Health:8f,Tags:["orange.wind.charge.zombie"],CustomName:{"bold":true,"color":"white","shadow_color":-25777,"translate":"entity.cookieorange_res.orange_wind_charge_zombie"},equipment:{chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:bolt"}}},head:{id:"minecraft:iron_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:bolt"}}},mainhand:{id:"minecraft:wooden_spear",count:1,components:{"minecraft:damage":0.5,"minecraft:attack_range":{min_reach:0.0,max_reach:2.0,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.4}}}},drop_chances:{chest:0.000,head:0.000,mainhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:9999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:2},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:explosion_knockback_resistance",base:0},{id:"minecraft:follow_range",base:40},{id:"minecraft:knockback_resistance",base:0}]}},weight:1}]}] 1

# CustomName:{'bold':true,'color':'white','shadow_color':-25777,'text':'雲湧亡靈'},
