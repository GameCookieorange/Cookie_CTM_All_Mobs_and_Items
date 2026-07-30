scoreboard players add @s light_green_timer 1
effect clear @s minecraft:poison

execute if score @s light_green_timer matches 10..15 if entity @a[distance=..14] run scoreboard players set @s light_green_timer 16

execute if score @s light_green_timer matches 10..15 unless entity @a[distance=..14] run scoreboard players set @s light_green_timer 10

execute if score @s light_green_timer matches 20 run data modify entity @s Motion set value [0.0,1.0,0.0]

execute if score @s light_green_timer matches 50 run summon area_effect_cloud ~ ~ ~ {Radius:5f,Duration:40,potion_contents:{custom_color:3180310,custom_effects:[{id:"minecraft:poison",amplifier:1,duration:80,show_particles:1b}]}}

execute if score @s light_green_timer matches 50 run playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 0.8 0.5

execute if score @s light_green_timer matches 240.. run scoreboard players set @s light_green_timer 0

execute if entity @n[type=slime, distance=..5] run effect give @s minecraft:oozing 5 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:6,MaxNearbyEntities:12,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:900,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:drowned",Health:18f,IsBaby:0b,CanBreakDoors:1b,Tags:["light_green.mudbound"],CustomName:{"bold":true,"color":"#34915D","italic":false,"shadow_color":-7283937,"text":"泥沼怪","underlined":true},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":876813}},head:{id:"minecraft:bush",count:1}},drop_chances:{chest:0.000,head:0.000},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:18},{id:"minecraft:safe_fall_distance",base:10},{id:"minecraft:water_movement_efficiency",base:0.8}]}},weight:1}]}] 1