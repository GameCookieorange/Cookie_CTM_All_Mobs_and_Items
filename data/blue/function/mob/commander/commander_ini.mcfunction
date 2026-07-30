scoreboard players add @s blue_timer 1

execute if score @s blue_timer matches 10..15 if entity @e[type=!#minecraft:not_mob, sort=nearest, limit=1, distance=..14, tag=!blue.ocean_army] run scoreboard players set @s blue_timer 16
execute if score @s blue_timer matches 10..15 unless entity @e[type=!#minecraft:not_mob, sort=nearest, limit=1, distance=..14, tag=!blue.ocean_army] run scoreboard players set @s blue_timer 10

#====================================================

execute if score @s blue_timer matches 20 run effect give @s glowing 8 1 true 

execute if score @s blue_timer matches 40 at @s run playsound entity.ravager.celebrate hostile @a ~ ~ ~ 1.2 0.8
execute if score @s blue_timer matches 60 at @s run tp @s ^ ^ ^ facing entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, limit=1, sort=nearest]
execute if score @s blue_timer matches 60 run function blue:mob/commander/calculate_motion

execute if score @s blue_timer matches 100 at @s run playsound entity.ravager.celebrate hostile @a ~ ~ ~ 1.2 1
execute if score @s blue_timer matches 120 at @s run tp @s ^ ^ ^ facing entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, limit=1, sort=nearest]
execute if score @s blue_timer matches 120 run function blue:mob/commander/calculate_motion

execute if score @s blue_timer matches 160 at @s run playsound entity.ravager.celebrate hostile @a ~ ~ ~ 1.2 1
execute if score @s blue_timer matches 180 at @s run tp @s ^ ^ ^ facing entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, limit=1, sort=nearest]
execute if score @s blue_timer matches 180 run function blue:mob/commander/calculate_motion


#====================================================

execute if score @s blue_timer matches 360.. run scoreboard players set @s blue_timer 0

#====================================================

execute if score @s blue_timer matches 70 run tag @s[predicate=!blue:is_in_water] add blue.commander_jumping

execute if score @s blue_timer matches 130 run tag @s[predicate=!blue:is_in_water] add blue.commander_jumping

execute if score @s blue_timer matches 190 run tag @s[predicate=!blue:is_in_water] add blue.commander_jumping
execute if predicate blue:is_on_ground as @s[tag=blue.commander_jumping] run function blue:mob/commander/land

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:1,RequiredPlayerRange:20,Delay:0,MinSpawnDelay:3600,MaxSpawnDelay:4600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie_villager",PersistenceRequired:1b,Team:"blue_ocean_army",Health:56f,Tags:["blue.fortress_commander","blue.ocean_army"],ConversionTime:-1,CanBreakDoors:true,IsBaby:false,CustomName:{"bold":true,"color":"#9345ED","italic":false,"shadow_color":-16251070,"translate":"**要塞司令**","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":1669521,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"},"minecraft:enchantments":{"frost_walker":1,"vanishing_curse":1}}},legs:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"},"minecraft:enchantments":{"blast_protection":3,"vanishing_curse":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"blast_protection":4,"vanishing_curse":1},"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:silence"}}},head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{"respiration":2},"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:silence"}}},mainhand:{id:"minecraft:mace",count:1,components:{"minecraft:enchantments":{"breach":1,"knockback":2,"wind_burst":2,"vanishing_curse":1}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},VillagerData:{profession:"minecraft:weaponsmith",type:"minecraft:snow"},attributes:[{id:"minecraft:max_health",base:56},{id:"minecraft:attack_damage",base:4},{id:"minecraft:follow_range",base:24},{id:"minecraft:safe_fall_distance",base:40},{id:"minecraft:movement_speed",base:0.23},{id:"minecraft:water_movement_efficiency",base:1},{id:"minecraft:knockback_resistance",base:0.6},{id:"minecraft:explosion_knockback_resistance",base:0.6}]}},weight:1}]}] 1