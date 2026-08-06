scoreboard players add @s[type=phantom] green_timer 1
execute if score @s[type=phantom] green_timer matches 60 run function green:mob/firework_shooter/shoot_down
execute if score @s[type=phantom] green_timer matches 70 run function green:mob/firework_shooter/shoot_down
execute if score @s[type=phantom] green_timer matches 80 run function green:mob/firework_shooter/shoot_down

execute at @s[type=zombie] unless predicate green:is_sitting run scoreboard players add @s[type=zombie] green_timer 1
execute at @s[type=zombie] unless predicate green:is_sitting run scoreboard players add @s[type=zombie] green_debug 1
execute unless predicate green:is_sitting unless block ~ ~-0.2 ~ #minecraft:passable if score @s[type=zombie] green_timer matches 60 run function green:mob/firework_shooter/shoot_up

execute if score @s[type=zombie] green_debug matches 1..70 run tp @s ~ ~ ~
execute if score @s[type=zombie] green_debug matches 1 at @s run playsound entity.ravager.celebrate hostile @a ~ ~ ~ 3 2
execute if score @s[type=zombie] green_debug matches 1 run effect give @s glowing 3 1 true
execute if score @s[type=zombie] green_debug matches 50..70 run function green:mob/firework_shooter/shoot_down



execute if score @s green_timer matches 10..15 if entity @a[distance=..36] at @s run scoreboard players set @s green_timer 16
execute if score @s green_timer matches 10..15 unless entity @a[distance=..36] at @s run scoreboard players set @s green_timer 10
execute if score @s green_timer matches 20 run effect give @s glowing 2 1 true
execute if score @s green_timer matches 200 run scoreboard players set @s green_timer 0





# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:10,MaxNearbyEntities:4,RequiredPlayerRange:50,Delay:0,MinSpawnDelay:4000,MaxSpawnDelay:5000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:phantom",home_radius:20,Health:16f,Tags:["green.not_party_creeper","green.firework_shooter"],Passengers:[{id:"minecraft:marker",Tags:["green.cat_marker"]},{id:"minecraft:zombie",Health:32f,CanBreakDoors:1b,DrownedConversionTime:-1,Tags:["green.not_party_creeper","green.firework_shooter"],CustomName:{"bold":true,"color":"#9BE330","italic":false,"shadow_color":-11726436,"translate":"**煙火發射者**","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":13106959,"minecraft:enchantments":{"blast_protection":1,"feather_falling":10,"vanishing_curse":1},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:spire"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":6792724,"minecraft:enchantments":{"blast_protection":10,"vanishing_curse":1},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:spire"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":9814573,"minecraft:enchantments":{"blast_protection":10,"vanishing_curse":1},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:spire"}}},head:{id:"minecraft:creeper_head",count:1,components:{"minecraft:enchantments":{"blast_protection":10,"vanishing_curse":1}}},mainhand:{id:"minecraft:firework_rocket",count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:max_health",base:32},{id:"minecraft:attack_damage",base:8}]}],CustomName:{"bold":true,"color":"#9BE330","italic":false,"shadow_color":-11726436,"translate":"**煙火發射坐騎**","underlined":true},attributes:[{id:"minecraft:follow_range",base:50},{id:"minecraft:scale",base:2.5},{id:"minecraft:max_health",base:16},{id:"minecraft:attack_damage",base:8}]}},weight:1}]}] 1