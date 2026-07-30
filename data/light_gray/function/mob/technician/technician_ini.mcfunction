scoreboard players add @s light_gray_timer 1

execute if score @s light_gray_timer matches 2 run data modify entity @s angry_at set from entity @a[distance=..12, limit=1, sort=nearest] UUID

execute if entity @e[distance=..13, team=light_gray_machine_team, type=!creeper, type=!zombified_piglin, type=!shulker] if score @s light_gray_timer matches 15..20 run scoreboard players set @s light_gray_timer 25
execute unless entity @e[distance=..13, team=light_gray_machine_team, type=!creeper, type=!zombified_piglin, type=!shulker] if score @s light_gray_timer matches 15..20 run scoreboard players set @s light_gray_timer 0

execute if score @s light_gray_timer matches 30 run effect give @s glowing 1 2 true

execute if score @s light_gray_timer matches 50 run execute as @e[team=light_gray_machine_team, sort=nearest, limit=1,type=!shulker, type=!creeper, type=!zombified_piglin, type=!guardian, distance=..12] at @s run function light_gray:mob/technician/fix

execute if score @s light_gray_timer matches 180.. run scoreboard players set @s light_gray_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:3,MaxNearbyEntities:3,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:1400,MaxSpawnDelay:1600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombified_piglin",Team:"light_gray_machine_team",Health:26f,IsBaby:0b,Tags:["light_gray.technician"],CustomName:{"bold":true,"color":"#BABABA","italic":false,"shadow_color":-13224394,"translate":"*機械技師*","underlined":true},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:silence"}}},chest:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:iron",pattern:"minecraft:ward"}}},head:{id:"minecraft:skeleton_skull",count:1},mainhand:{id:"minecraft:anvil",count:1}},drop_chances:{feet:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:attack_knockback",base:2},{id:"minecraft:max_health",base:26},{id:"minecraft:movement_speed",base:0.2}]}},weight:1}]}] 1