# being attack
execute if entity @s[nbt={HurtTime:9s}] run playsound entity.creaking.twitch master @a ~ ~ ~ 1 1
execute if entity @s[nbt={HurtTime:9s}] run tag @s add white_been_attacked


execute if entity @s[tag=white_been_attacked] run scoreboard players set @s white_timer 0
execute if entity @s[tag=white_been_attacked] run function white:mob/treant/cooldown


# 5s later
execute if entity @s[tag=white_been_attacked, nbt={HurtTime:9s}] run scoreboard players set @s white_debug 0
execute if entity @s[tag=!white_been_attacked] run scoreboard players set @s white_debug 0
execute if entity @s[tag=!white_been_attacked] run function white:mob/treant/heal

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:8,RequiredPlayerRange:16,Delay:10,MinSpawnDelay:2400,MaxSpawnDelay:3600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",Silent:1b,Team:"white_forest_creature",PersistenceRequired:1b,Health:30f,IsBaby:0b,CanBreakDoors:1b,Tags:["white.mob","white.treant"],CustomName:{"bold":true,"color":"#DFFFCF","italic":false,"shadow_color":-9253039,"text":"**樹妖**","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":9527097}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":12562372}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":12895428}},head:{id:"minecraft:pale_oak_wood",count:1},mainhand:{id:"minecraft:mud",count:4},offhand:{id:"minecraft:oak_leaves",count:4,components:{"minecraft:block_state":{persistent:"true",waterlogged:"true"}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.200,mainhand:0.400,offhand:0.400},attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:burning_time",base:40},{id:"minecraft:knockback_resistance",base:0.4},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.18},{id:"minecraft:scale",base:1.2}]}},weight:1}]}] 1