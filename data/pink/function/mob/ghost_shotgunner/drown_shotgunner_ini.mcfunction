scoreboard players add @s pink_timer 1

execute if score @s pink_timer matches 10..15 if entity @e[distance=..16, type=!#not_mob, team=!pink_ghost_team, tag=!pink.fishes, tag=!pink.pufferfish] run scoreboard players set @s pink_timer 18
execute if score @s pink_timer matches 10..15 unless entity @e[distance=..16, type=!#not_mob, team=!pink_ghost_team, tag=!pink.fishes, tag=!pink.pufferfish] run scoreboard players set @s pink_timer 10

execute if predicate pink:is_swimming run scoreboard players set @s pink_timer 10

execute if score @s pink_timer matches 20 run effect give @s glowing 2 0 true


execute if score @s pink_timer matches 40..70 run tp @s ^ ^ ^ facing entity @e[distance=..40, type=!#not_mob, team=!pink_ghost_team, limit=1, sort=nearest, tag=!pink.fishes, tag=!pink.pufferfish] feet

execute if score @s pink_timer matches 60 run function pink:mob/ghost_shotgunner/summon_arrow_0
execute if score @s pink_timer matches 60 at @s run playsound item.crossbow.shoot hostile @a ^ ^ ^ 1.4 1.2

execute if score @s pink_timer matches 65 run function pink:mob/ghost_shotgunner/summon_arrow_1
execute if score @s pink_timer matches 65 at @s run playsound item.crossbow.shoot hostile @a ^ ^ ^ 1.4 1.2
execute if score @s pink_timer matches 65 at @s run playsound item.crossbow.shoot hostile @a ^ ^ ^ 1.4 1.2

execute if score @s pink_timer matches 70 run function pink:mob/ghost_shotgunner/summon_arrow_1
execute if score @s pink_timer matches 70 at @s run playsound item.crossbow.shoot hostile @a ^ ^ ^ 1.4 1.2
execute if score @s pink_timer matches 70 at @s run playsound item.crossbow.shoot hostile @a ^ ^ ^ 1.4 1.2

execute if score @s pink_timer matches 160.. run scoreboard players set @s pink_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:8,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:drowned",Team:"pink_ghost_team",Health:20f,IsBaby:0b,CanBreakDoors:1b,Tags:["pink.drowned_shotgunner"],CustomName:{"bold":true,"color":"light_purple","italic":false,"shadow_color":-13639615,"text":"幽靈散射手","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{dyed_color:4684293}},head:{id:"minecraft:leather_helmet",count:1,components:{dyed_color:2704679,trim:{material:"minecraft:diamond",pattern:"minecraft:ward"},enchantments:{projectile_protection:2}}},mainhand:{id:"minecraft:crossbow",count:1,components:{enchantments:{punch:1,multishot:2}}},offhand:{id:"minecraft:spectral_arrow",count:99,components:{"minecraft:max_stack_size":99}}},drop_chances:{feet:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.1},{id:"minecraft:water_movement_efficiency",base:0.5}]}},weight:1}]}] 1