scoreboard players add @s blue_debug 1
execute if score @s blue_debug matches 6000.. run kill @s

execute if entity @a[distance=..20] run scoreboard players add @s blue_timer 1
execute if entity @a[distance=..30] run scoreboard players add @s blue_timer 1
execute if entity @a[distance=..40] run scoreboard players add @s blue_timer 1
execute if entity @a[distance=..50] run scoreboard players add @s blue_timer 1

execute if score @s blue_timer matches 1..5 at @s run function blue:mob/jellyfish/particle
execute if score @s blue_timer matches 24.. run scoreboard players set @s blue_timer 0

execute as @e[type=fireball, distance=..7] at @s run tag @s add blue.ghast_fireball

effect give @s glowing 1 0 true
effect give @s water_breathing 1 0 true

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:3,RequiredPlayerRange:30,Delay:0,MinSpawnDelay:3200,MaxSpawnDelay:4000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:cod",Silent:true,DeathLootTable:"minecraft:empty",Team:"blue_ocean_army",Tags:["blue.fish_ghast","blue.ocean_army"],Passengers:[{id:"minecraft:ghast",Team:"blue_ocean_army",PersistenceRequired:1b,Health:24f,ExplosionPower:2,Tags:["blue.matrix_jellyfish","blue.ocean_army"],CustomName:{"bold":true,"color":"#99B1D1","italic":false,"shadow_color":-13417134,"translate":"*矩陣水母*","underlined":true},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{enchantments:{blast_protection:20,thorns:3,unbreaking:10,vanishing_curse:1}}}},drop_chances:{chest:0.000},attributes:[{id:"minecraft:max_health",base:24},{id:"minecraft:water_movement_efficiency",base:1},{id:"minecraft:scale",base:0.5}]}],CustomName:{"bold":true,"color":"#99B1D1","italic":false,"shadow_color":-13417134,"translate":"*矩陣水母*","underlined":true},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{enchantments:{blast_protection:20,thorns:3,unbreaking:10,vanishing_curse:1}}}},drop_chances:{chest:0.000}}},weight:1}]}] 1