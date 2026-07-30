scoreboard players add @s brown_timer 1

execute if score @s brown_timer matches 10..15 if entity @e[type=!#minecraft:not_mob,tag=!brown.steampunk, distance=..5] run scoreboard players set @s brown_timer 16
execute if score @s brown_timer matches 10..15 unless entity @e[type=!#minecraft:not_mob, tag=!brown.steampunk, distance=..5] run scoreboard players set @s brown_timer 10

execute if score @s brown_timer matches 20 run effect give @s glowing 2 0 true

execute if score @s brown_timer matches 60 at @s run playsound block.fire.extinguish hostile @a ~ ~ ~ 0.8 0.2
execute if score @s brown_timer matches 60 at @s run particle cloud ~ ~0.3 ~ 1.8 0.1 1.8 0 75 normal
execute if score @s brown_timer matches 60 at @s run particle cloud ~ ~0.3 ~ 1.8 1.1 1.8 0 75 normal
execute if score @s brown_timer matches 60 as @e[type=!#minecraft:not_mob, tag=!brown.steampunk, distance=..5] at @s run function brown:steam_machine/burn

execute if score @s brown_timer matches 200.. run scoreboard players set @s brown_timer 0

execute as @s[nbt={HurtTime:10s}] at @s run playsound block.anvil.land hostile @a ~ ~ ~ 0.6 1.6 1

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:6,MaxNearbyEntities:5,RequiredPlayerRange:12,Delay:1,MinSpawnDelay:10,MaxSpawnDelay:20,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:husk",Team:"brown_steampunk",Health:36f,IsBaby:0b,CanBreakDoors:1b,DrownedConversionTime:-1,Tags:["brown.steam_machine","brown.steampunk"],CustomName:{"bold":true,"color":"#D16F45","italic":false,"shadow_color":-11259861,"translate":"蒸氣儀器","underlined":true},equipment:{feet:{id:"minecraft:copper_boots",count:1,components:{"minecraft:enchantments":{"soul_speed":2,"vanishing_curse":1}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":9055510,"minecraft:enchantments":{"vanishing_curse":1}}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:dune"},"minecraft:enchantments":{"projectile_protection":4,"vanishing_curse":1}}},head:{id:"minecraft:smoker",count:1,components:{"minecraft:enchantments":{"fire_protection":4,"vanishing_curse":1}}},mainhand:{id:"minecraft:copper_axe",count:1,components:{"minecraft:enchantments":{"fire_aspect":1,"knockback":1,"vanishing_curse":1}}},offhand:{id:"minecraft:fire_charge",count:1,components:{"minecraft:enchantments":{"fire_aspect":1,"vanishing_curse":1}}}},drop_chances:{feet:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:max_health",base:36}]}},weight:1}]}] 1