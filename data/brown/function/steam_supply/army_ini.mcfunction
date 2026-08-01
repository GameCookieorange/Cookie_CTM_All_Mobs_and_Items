scoreboard players add @s brown_timer 1

execute if score @s brown_timer matches 10 run function brown:steam_supply/supply/give_supply
execute if score @s brown_timer matches 30 run function brown:steam_supply/supply/give_supply
execute if score @s brown_timer matches 50 run function brown:steam_supply/supply/give_supply

execute if score @s brown_timer matches 250.. run scoreboard players set @s brown_timer 0

# ===========================================================================

scoreboard players add @s brown_debug 1

execute if score @s brown_debug matches 1000 run effect give @s glowing 20 1 true

execute if score @s brown_debug matches 1100 run team leave @s
execute if score @s brown_debug matches 1120 run team join brown_steampunk
execute if score @s brown_debug matches 1140 run team leave @s
execute if score @s brown_debug matches 1160 run team join brown_steampunk
execute if score @s brown_debug matches 1180 run team leave @s
execute if score @s brown_debug matches 1190.. run item replace entity @s armor.body with air 1 
execute if score @s brown_debug matches 1190.. run tp @a[distance=..10, predicate=brown:is_sitting] ~ ~ ~
execute if score @s brown_debug matches 1200.. run function brown:steam_supply/leave

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:3,MaxNearbyEntities:1,RequiredPlayerRange:40,Delay:0,MinSpawnDelay:4000,MaxSpawnDelay:5000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:happy_ghast",Team:"brown_steampunk",Health:60f,Tags:["brown.steampunk","brown.happy_supply"],CustomName:{"bold":true,"color":"#EBD4CA","italic":false,"shadow_color":-9742002,"translate":"蒸汽補給領隊","underlined":true},equipment:{body:{id:"minecraft:brown_harness",count:1,components:{"minecraft:enchantments":{"vanishing_curse":1}}}},drop_chances:{body:0.000},attributes:[{id:"minecraft:flying_speed",base:0.02},{id:"minecraft:max_health",base:60},{id:"minecraft:scale",base:1.5}]}},weight:1}]}] 1