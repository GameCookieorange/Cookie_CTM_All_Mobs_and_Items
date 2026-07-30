scoreboard players add @s light_gray_timer 1

execute if score @s light_gray_timer matches 20 run execute unless entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..18] run scoreboard players set @s light_gray_timer 0
execute if score @s light_gray_timer matches 20 run execute if entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..18] run scoreboard players set @s light_gray_timer 25

execute if score @s light_gray_timer matches 40 run effect give @s minecraft:glowing 2 1 true

execute if score @s light_gray_timer matches 80..130 at @s facing entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..32, sort=nearest, limit=1] feet run tp @s ~ ~ ~ ~ ~

execute if score @s light_gray_timer matches 80 run function light_gray:mob/shooter/bullet_choose

execute if score @s light_gray_timer matches 160.. run scoreboard players set @s light_gray_timer 0

execute as @s[tag=light_gray.shooter_bullet_0] run function light_gray:mob/shooter/bullet/bullet_0
execute as @s[tag=light_gray.shooter_bullet_1] run function light_gray:mob/shooter/bullet/bullet_1
execute as @s[tag=light_gray.shooter_bullet_2] run function light_gray:mob/shooter/bullet/bullet_2



# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:5,MaxNearbyEntities:6,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:1000,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:skeleton",Team:"light_gray_machine_team",Health:20f,Tags:["light_gray.shooter"],CustomName:{"bold":true,"color":"#C9CAD6","italic":false,"shadow_color":-10788509,"translate":"機動步兵","underlined":true},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:iron",pattern:"minecraft:vex"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":10858183,"minecraft:trim":{material:"minecraft:quartz",pattern:"minecraft:dune"}}},head:{id:"minecraft:light_gray_stained_glass",count:1},mainhand:{id:"minecraft:crossbow",count:1,components:{"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:stone",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{feet:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.2}]}},weight:1}]}] 1