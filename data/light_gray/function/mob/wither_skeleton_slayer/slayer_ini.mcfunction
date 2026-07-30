scoreboard players add @s light_gray_timer 1
execute if score @s light_gray_timer matches 300 run scoreboard players set @s light_gray_timer 0

# =================================================

execute if score @s light_gray_timer matches 20..21 run execute unless entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..16] run scoreboard players set @s light_gray_timer 0
execute if score @s light_gray_timer matches 20..21 run execute if entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..16] run scoreboard players set @s light_gray_timer 25

execute as @s if score @s light_gray_timer matches 80..120 run particle angry_villager ~ ~2 ~ 1 1 1 0.05 2

execute if score @s light_gray_timer matches 80 run effect give @s glowing 2 1 true
execute if score @s light_gray_timer matches 100..120 run tp @s ^ ^ ^ facing entity @e[type=!#not_mob, team=!light_gray_machine_team, limit=1, sort=nearest] feet
execute if score @s light_gray_timer matches 120 run execute as @s at @s run summon marker ^ ^ ^20 {Tags:["light_gray.dash_point"]}
execute if score @s light_gray_timer matches 120 run tag @s add slay_attack_player

# =================================================

execute if score @s light_gray_timer matches 120 run function light_gray:mob/wither_skeleton_slayer/dash_start
execute if score @s light_gray_timer matches 120 run kill @e[tag=light_gray.dash_point, sort=nearest, limit=1]
execute if score @s light_gray_timer matches 120 run execute at @s run playsound cookieorange_res:custom.mob.light_gray.elite_slayer master @a ~ ~ ~ 0.6 1


execute if entity @s[tag=slay_attack_player] run particle cloud ~ ~ ~ 0.0 0.2 0.0 0.5 4
execute if entity @s[tag=slay_attack_player] run function light_gray:mob/wither_skeleton_slayer/dash_marco with entity @s data

execute if score @s[tag=slay_attack_player] light_gray_timer matches 120..180 run function light_gray:mob/wither_skeleton_slayer/slayer_particle

execute if entity @s[tag=slay_attack_player] unless block ^ ^1 ^2 #light_gray:passable run scoreboard players set @s light_gray_timer 180
execute if entity @s[tag=slay_attack_player] unless block ^ ^2 ^2 #light_gray:passable run scoreboard players set @s light_gray_timer 180

execute if score @s light_gray_timer matches 180 run function light_gray:mob/wither_skeleton_slayer/slay_attack_end

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:2,RequiredPlayerRange:18,Delay:0,MinSpawnDelay:2000,MaxSpawnDelay:2400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:wither_skeleton",OnGround:1b,PersistenceRequired:1b,Health:40f,Team:"light_gray_machine_team",Motion:[0.0,0.0,0.0],Tags:["light_gray.wither_skeleton_slayer"],CustomName:{"bold":true,"color":"gray","italic":false,"shadow_color":-12108201,"translate":"**突擊切割者**","underlined":true},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:vex"},"minecraft:enchantments":{"feather_falling":4}}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:redstone",pattern:"minecraft:ward"}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{trim:{material:"minecraft:netherite",pattern:"minecraft:eye"},enchantment_glint_override:true}},head:{id:"minecraft:anvil",count:1,components:{block_state:{facing:"south"}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:attack_damage",base:6},{id:"minecraft:explosion_knockback_resistance",base:0.8},{id:"minecraft:follow_range",base:40},{id:"minecraft:knockback_resistance",base:0.8},{id:"minecraft:max_health",base:40},{id:"minecraft:movement_efficiency",base:1},{id:"safe_fall_distance",base:10},{id:"minecraft:movement_speed",base:0.18},{id:"minecraft:scale",base:0.9}]}},weight:1}]}] 1