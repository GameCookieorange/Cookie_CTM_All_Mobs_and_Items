scoreboard players add @s yellow_become_thirsty 1

execute if score @s yellow_become_thirsty matches 1 run scoreboard players add @s yellow_thirsty_level 1

execute if score @s yellow_become_thirsty matches 1 if score @s yellow_thirsty_level matches 2 run tellraw @s {"text":"You feel thirsty...","color":"#a5a486",italic:true}

execute if score @s yellow_become_thirsty matches 1 if score @s yellow_thirsty_level matches 4 run tellraw @s {"text":"You feel really thirsty...","color":"#6c6803",italic:true}

execute if score @s yellow_become_thirsty matches 1 if score @s yellow_thirsty_level matches 6 run tellraw @s {"text":"You feel extremely thirsty...","color":"#774e15",bold:true,italic:true}


execute if score @s yellow_become_thirsty matches 400.. run scoreboard players set @s yellow_become_thirsty 0


execute if block ~ ~1 ~ water run function yellow:mob/dry_creature/reset


scoreboard players add @s yellow_damage_timer 1

execute if score @s yellow_damage_timer matches 99 if score @s yellow_thirsty_level matches 6.. at @s run damage @s 4 dry_out

execute if score @s yellow_damage_timer matches 100.. run scoreboard players set @s yellow_damage_timer 0


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:10,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:750,MaxSpawnDelay:900,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:parched",Team:"yellow_desert_creature",Health:20f,Tags:["yellow.dry_creature"],CustomName:{"bold":true,"color":"#DEC752","italic":false,"shadow_color":-7047126,"text":"乾涸枯骸","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":14260560}},offhand:{id:"minecraft:tipped_arrow",count:99,components:{"minecraft:potion_contents":{custom_color:16763448,custom_effects:[{id:"minecraft:weakness",amplifier:0,duration:160}]},"minecraft:max_damage":99}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":16760358,"minecraft:trim":{material:"minecraft:resin",pattern:"minecraft:dune"}}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":12873744}},mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{feet:0.000,chest:0.000,head:0.000,offhand:0.000,mainhand:0.000},attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.2}]}},weight:1}]}] 1

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:10,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:750,MaxSpawnDelay:900,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:husk",Health:20f,IsBaby:0b,Tags:["yellow.dry_creature"],CustomName:{"bold":true,"color":"#DEC752","italic":false,"shadow_color":-7047126,"text":"乾涸活死人","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{dyed_color:14260560}},chest:{id:"minecraft:leather_chestplate",count:1,components:{dyed_color:16760358,trim:{material:"minecraft:resin",pattern:"minecraft:dune"}}},head:{id:"minecraft:leather_helmet",count:1,components:{dyed_color:12873744}},mainhand:{id:"minecraft:sand",count:3},offhand:{id:"minecraft:sand",count:2}},drop_chances:{feet:0.000,chest:0.000,head:0.000,mainhand:0.500,offhand:0.500},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.22}]}},weight:1}]}] 1
