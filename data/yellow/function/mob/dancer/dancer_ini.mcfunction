scoreboard players add @s yellow_timer 1
execute if score @s yellow_timer matches 500.. run scoreboard players set @s yellow_number_value 0
execute if score @s yellow_timer matches 500.. run scoreboard players set @s yellow_timer 0

execute if score @s yellow_timer matches 10..15 at @s if entity @e[type=#minecraft:attack_entity,distance=31..] run scoreboard players set @s yellow_timer 10
execute if score @s yellow_timer matches 10..15 at @s if entity @e[type=#minecraft:attack_entity,distance=..31] run scoreboard players set @s yellow_timer 20

execute if score @s yellow_timer matches 40 run effect give @s glowing 4 1 true


execute if score @s yellow_timer matches 100 run execute as @s at @s facing entity @p eyes run tp @s ^ ^ ^ ~ ~
execute if score @s yellow_timer matches 118..120 run execute as @e[type=#minecraft:hostile, type=!armor_stand, distance=..20, tag=!chicken_zombie] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~


execute if score @s yellow_timer matches 40..100 run function yellow:mob/dancer/music

execute if score @s yellow_timer matches 50 at @s run playsound minecraft:entity.chicken.hurt hostile @a ~ ~ ~ 1 1.2
execute if score @s yellow_timer matches 70 at @s run playsound minecraft:entity.chicken.hurt hostile @a ~ ~ ~ 1 1.5
execute if score @s yellow_timer matches 90 at @s run playsound minecraft:entity.chicken.hurt hostile @a ~ ~ ~ 1 1.8


execute if score @s yellow_timer matches 100 run function yellow:mob/dancer/dancing
execute if score @s yellow_timer matches 120 run function yellow:mob/dancer/other_dancing

execute if score @s yellow_timer matches 100 if score @s yellow_number_value matches 4 run function yellow:mob/dancer/calculate_motion_4_2
execute if score @s yellow_timer matches 120 if score @s yellow_number_value matches 4 run function yellow:mob/dancer/calculate_motion_4_1

execute if score @s yellow_timer matches 130 if score @s yellow_number_value matches 4 run execute as @e[type=#minecraft:hostile, type=!armor_stand, distance=..20, tag=!chicken_zombie, tag=!yellow.dancer] at @s run function yellow:mob/dancer/calculate_motion_4_2
execute if score @s yellow_timer matches 150 if score @s yellow_number_value matches 4 run execute as @e[type=#minecraft:hostile, type=!armor_stand, distance=..20, tag=!chicken_zombie, tag=!yellow.dancer] at @s run function yellow:mob/dancer/calculate_motion_4_1

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:2,MaxNearbyEntities:10,RequiredPlayerRange:16,Delay:10,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:chicken",Fire:999999,HasVisualFire:1b,PersistenceRequired:1b,Health:26f,IsChickenJockey:1b,Tags:["yellow.dancer"],Passengers:[{id:"minecraft:zombie",PersistenceRequired:1b,Health:32f,IsBaby:1b,Tags:["chicken_zombie"],CustomName:{"bold":true,"color":"#FED83D","italic":false,"shadow_color":-100334,"text":"小雞騎士"},data:chicken_zombie,equipment:{mainhand:{id:"minecraft:music_disc_lava_chicken",count:1},offhand:{id:"minecraft:cooked_chicken",count:4}},drop_chances:{mainhand:1.000,offhand:1.000},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:max_health",base:16},{id:"minecraft:scale",base:1.2}]}],CustomName:{"bold":true,"color":"#FF8330","italic":false,"shadow_color":-75715,"text":"蜃影舞者","underlined":true},data:yellow.dancer,active_effects:[{id:"minecraft:fire_resistance",amplifier:1,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:max_health",base:26},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:scale",base:1.2}]}},weight:1}]}] 1

