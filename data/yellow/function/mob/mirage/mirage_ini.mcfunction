scoreboard players add @s yellow_timer 1

execute if score @s yellow_timer matches 0..30 at @s run particle crimson_spore ~ ~ ~ 0.8 0.8 0.8 0.01 20 normal

execute if score @s yellow_timer matches 30..35 if entity @e[limit=1, distance=..25, type=#minecraft:attack_entity] run scoreboard players set @s yellow_timer 40
execute if score @s yellow_timer matches 30..35 unless entity @e[limit=1, distance=..25, type=#minecraft:attack_entity] run scoreboard players set @s yellow_timer 0

execute if score @s yellow_timer matches 50 at @s run effect give @e[type=#minecraft:attack_entity, distance=..25] minecraft:blindness 2 0 true

execute if score @s yellow_timer matches 60 run function yellow:mob/mirage/switch/choose_to_switch

execute if score @s yellow_timer matches 80 at @s run effect give @s glowing 5 0 true
execute if score @s yellow_timer matches 80 at @s run effect give @s slowness 10 2 false


execute if score @s yellow_timer matches 1100 at @s run scoreboard players set @s yellow_timer 0 

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:10,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:1800,MaxSpawnDelay:2400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:parched",OnGround:1b,DeathLootTable:"minecraft:air",Team:"yellow_mirage",PersistenceRequired:1b,Health:30f,Tags:["yellow.mirage"],CustomName:{"bold":true,"color":"#FFF708","italic":false,"shadow_color":-5749742,"text":"|**|蜃景之物|**|","underlined":true},equipment:{legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":16769840,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:spire"},"minecraft:enchantment_glint_override":true}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16753433,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:dune"},"minecraft:enchantment_glint_override":true}},head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:dune"},"minecraft:enchantment_glint_override":true}},mainhand:{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.175},{id:"minecraft:scale",base:1.2}]}},weight:1}]}] 1


# PS: the hardest to make this because of player assist the fake problem, but I finally make it work. I hope so. :)