scoreboard players add @s purple_timer 1
execute if score @s purple_debug matches ..0 run scoreboard players set @s purple_debug 0
execute if entity @a[distance=..12] run scoreboard players add @s purple_debug 1
execute if entity @a[distance=..12] at @s run particle pale_oak_leaves ~ ~1.5 ~ 1 1 1 1 2

effect clear @s[nbt={active_effects:[{"id":"minecraft:glowing"}]}] glowing
execute if predicate purple:bright run effect give @s resistance 1 3 true
execute if predicate purple:bright at @s run particle electric_spark ~ ~0.2 ~ 0.5 0 0.5 0 5

execute if score @s purple_timer matches 10..15 if entity @e[nbt={active_effects:[{id:"minecraft:glowing"}]}, team=!purple.not_being_snipe,type=!#not_mob, tag=!purple.wall_crossing, tag=!purple.phantom_sniper, distance=..12] run scoreboard players set @s purple_timer 16
execute if score @s purple_timer matches 10..15 unless entity @e[nbt={active_effects:[{id:"minecraft:glowing"}]}, team=!purple.not_being_snipe,type=!#not_mob, tag=!purple.wall_crossing, tag=!purple.phantom_sniper, distance=..12] run scoreboard players set @s purple_timer 10

execute if score @s purple_timer matches 40 if entity @e[type=!#not_mob,team=!purple.not_being_snipe, tag=!purple.wall_crossing, tag=!purple.phantom_sniper, distance=..12, nbt={active_effects:[{id:"minecraft:glowing"}]}] at @s run function purple:mob/photosensitive/recover

execute if score @s purple_timer matches 40 if entity @e[type=!#not_mob,team=!purple.not_being_snipe, tag=!purple.wall_crossing, tag=!purple.phantom_sniper, distance=..12, nbt={active_effects:[{id:"minecraft:glowing"}]}] as @e[type=!#not_mob,sort=random, limit=1,team=!purple.not_being_snipe, tag=!purple.wall_crossing, tag=!purple.phantom_sniper, distance=..12, nbt={active_effects:[{id:"minecraft:glowing"}]}] at @s run function purple:mob/photosensitive/shock

execute if score @s purple_timer matches 50.. run scoreboard players set @s purple_timer 0
execute if score @s purple_debug matches 800..820 at @s run particle pale_oak_leaves ~ ~ ~ 0.5 0.5 0.5 1 30
execute if score @s purple_debug matches 810 at @s run playsound entity.creaking.death hostile @a ~ ~ ~ 1 0.5
execute if score @s purple_debug matches 820.. run tp @s ~ ~-4000 ~
execute if score @s purple_debug matches 820.. run kill @s


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:3,MaxNearbyEntities:2,RequiredPlayerRange:30,Delay:0,MinSpawnDelay:4000,MaxSpawnDelay:5000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creaking",OnGround:1b,Team:"purple.not_being_snipe",PersistenceRequired:1b,Health:100f,Tags:["purple.mobs","purple.photosensitive"],CustomName:{"bold":true,"color":"#A28FC2","italic":false,"shadow_color":-11916951,"translate":"**感光扭曲物**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:100},{id:"minecraft:scale",base:1.5},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:max_health",base:100},{id:"minecraft:step_height",base:2}]}},weight:1}]}] 1