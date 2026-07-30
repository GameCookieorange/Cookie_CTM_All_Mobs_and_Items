scoreboard players add @s light_blue_timer 1

execute if score @s light_blue_timer matches ..2 if entity @e[type=#minecraft:attack_entity, distance=..10] at @s run scoreboard players set @s light_blue_timer 5

execute if score @s light_blue_timer matches ..2 unless entity @e[type=#minecraft:attack_entity, distance=..10] at @s run scoreboard players set @s light_blue_timer 0

execute if score @s light_blue_timer matches 5 run effect give @s glowing 1 0 true

execute if score @s light_blue_timer matches 25 run data modify entity @s TicksFrozen set value 0

execute if score @s light_blue_timer matches 25 run playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1 1.5

execute as @s[nbt={HurtTime:10s}] at @s run playsound block.glass.break master @a ~ ~ ~ 2 1.7

execute if score @s light_blue_timer matches 25..85 run function light_blue:mob/cracked_crystal/fire_x
execute if score @s light_blue_timer matches 25..85 run scoreboard players set @s light_blue_timer 105
execute as @s[nbt={HurtTime:10s}] if score @s light_blue_timer matches 85.. at @s run scoreboard players add @s light_blue_timer 80

execute if score @s light_blue_timer matches 280.. run scoreboard players set @s light_blue_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:3,MaxNearbyEntities:4,RequiredPlayerRange:12,Delay:1,MinSpawnDelay:2000,MaxSpawnDelay:2400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:skeleton",Silent:1b,PersistenceRequired:1b,Health:40f,Tags:["light_blue.cracked_crystal"],CustomName:{"bold":true,"color":"#74E3DF","italic":false,"shadow_color":-14197003,"text":"**破碎晶體**","underlined":true},equipment:{chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:dune"}}},head:{id:"minecraft:sea_lantern",count:1},mainhand:{id:"minecraft:nether_star",count:1,components:{"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:nether_star",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:attack_knockback",base:0.4},{id:"minecraft:max_health",base:40},{id:"minecraft:movement_efficiency",base:2},{id:"minecraft:movement_speed",base:0.16},{id:"minecraft:scale",base:1.1},{id:"minecraft:step_height",base:2}]}},weight:1}]}] 1