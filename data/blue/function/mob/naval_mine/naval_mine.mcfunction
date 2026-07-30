scoreboard players add @s blue_debug 1
scoreboard players add @s blue_danger_clk 1

execute as @s[nbt={HurtTime:9s}] run scoreboard players add @s blue_debug 2000

effect give @s invisibility 1 1 true
effect give @s resistance 1 5 true
effect give @s[scores={blue_debug=1000..}] glowing 1 1 true

execute if score @s blue_debug matches 10.. if entity @e[type=!#minecraft:not_mob, distance=..6, tag=!blue.ocean_army, team=!blue_ocean_army] if score @s blue_debug matches ..999 run scoreboard players set @s blue_debug 1000

# execute unless predicate blue:is_in_water run kill @s

execute if score @s blue_danger_clk matches 10 run execute store result score @s blue_number_value run random value 20..80

execute as @s[tag=blue.floating] at @s run tp @s ~ ~0.2 ~

execute if score @s blue_danger_clk = @s blue_number_value run function blue:mob/naval_mine/stop

execute if score @s blue_debug matches 1200.. run function blue:mob/naval_mine/explode

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:16,MaxNearbyEntities:10,RequiredPlayerRange:30,Delay:0,MinSpawnDelay:2000,MaxSpawnDelay:3000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",NoGravity:0b,Team:"blue_torpedo",NoAI:0b,Health:50f,powered:1b,Tags:["blue.naval_mine","blue.ocean_army","blue.floating"],Motion:[0.0,1.0,0.0],CustomName:{"bold":true,"color":"#167AC7","italic":false,"shadow_color":-12269085,"translate":"深海水雷","underlined":true},attributes:[{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0},{id:"minecraft:oxygen_bonus",base:1000}]}},weight:1}]}] 1

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:16,MaxNearbyEntities:3,RequiredPlayerRange:30,Delay:0,MinSpawnDelay:3200,MaxSpawnDelay:4000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:cod",NoAI:1b,NoGravity:1b,Silent:true,DeathLootTable:"minecraft:empty",Team:"blue_ocean_army",Tags:["blue.fish_ghast","blue.ocean_army"],Passengers:[{id:"minecraft:creeper",NoGravity:0b,Team:"blue_torpedo",NoAI:0b,Health:50f,powered:1b,Tags:["blue.naval_mine","blue.ocean_army","blue.floating"],CustomName:{"bold":true,"color":"#167AC7","italic":false,"shadow_color":-12269085,"translate":"深海水雷","underlined":true},attributes:[{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0},{id:"minecraft:oxygen_bonus",base:1000}]}],CustomName:{"bold":true,"color":"#99B1D1","italic":false,"shadow_color":-13417134,"translate":"*魚*","underlined":true},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{enchantments:{blast_protection:20,thorns:3,unbreaking:10,vanishing_curse:1}}}},drop_chances:{chest:0.000}}},weight:1}]}] 1