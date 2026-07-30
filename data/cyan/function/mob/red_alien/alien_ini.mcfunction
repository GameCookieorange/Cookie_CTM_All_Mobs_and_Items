scoreboard players add @s cyan_timer 1

effect give @s fire_resistance 1 2 true

execute if score @s cyan_timer matches 20 run function cyan:mob/red_alien/break_area

execute if score @s cyan_timer matches 40.. run scoreboard players set @s cyan_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:8,MaxNearbyEntities:6,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:1000,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:piglin",OnGround:1b,IsImmuneToZombification:true,IsBaby:false,CannotHunt:true,Health:24f,Team:"cyan_space_team",Tags:["cyan.red_alien","cyan.space_creature"],CustomName:{"bold":true,"color":"#DE3C3C","italic":false,"shadow_color":-11355479,"translate":"紅外星人","underlined":true},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":10034714,"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:coast"}}},head:{id:"minecraft:red_stained_glass",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{head:0.000},attributes:[{id:"minecraft:armor",base:4},{id:"minecraft:attack_damage",base:5.5},{id:"minecraft:follow_range",base:24},{id:"minecraft:max_health",base:24},{id:"minecraft:movement_speed",base:0.30},{id:"minecraft:scale",base:0.75}],last_hurt_by_player_memory_time:100s}},weight:1}]}] 1