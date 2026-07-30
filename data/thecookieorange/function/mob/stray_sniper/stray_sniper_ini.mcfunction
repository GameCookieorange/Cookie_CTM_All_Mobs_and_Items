# 1. 基礎計時與粒子
scoreboard players add @s orange_timer 1
# scoreboard players add @s orange_debug 1

execute if score @s orange_timer matches 0..15 run particle minecraft:cloud ~ ~ ~ 1 1 1 0.01 1 force

execute if score @s orange_timer matches 10..15 at @s if entity @e[type=#minecraft:attack_entity,distance=45..] run scoreboard players set @s orange_timer 10
execute if score @s orange_timer matches 10..15 at @s if entity @e[type=#minecraft:attack_entity,distance=..45] run scoreboard players set @s orange_timer 20

# 2. 蓄力階段：到達 20 時的預警

execute if score @s orange_timer matches 25 run playsound minecraft:entity.wandering_trader.reappeared ambient @a ~ ~ ~ 1 1.5
execute if score @s orange_timer matches 20 run effect give @s minecraft:glowing 1 1 true

# execute as @e[tag=orange.wind.charge.stray.sniper, scores={orange_timer=50}] at @p run summon marker ~ ~ ~ {Tags:[fw_direction]}

execute if score @s orange_timer matches 26..65 run tp @s ^ ^ ^ facing entity @e[type=#minecraft:attack_entity, limit=1, sort=nearest] eyes
# 這tp @s ~ ~ ~ ~ ~ 會讓狙擊手一直面向玩家??????酷

execute as @s if score @s orange_timer matches 26..65 at @e[type=#minecraft:attack_entity, limit=1, sort=nearest] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 2

execute if score @s orange_timer matches 26..65 run particle minecraft:cloud ^ ^3 ^1 0.1 0.1 0.1 0.001 1 force

execute if score @s orange_timer matches 65 run summon firework_rocket ^ ^1.5 ^2 {Tags:[sniper_rocket],ShotAtAngle:1b,LifeTime:100,CustomName:{"bold":true,"color":"white","shadow_color":-26368,"text":"☁霧霾火箭☁"},FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16777215],fade_colors:[I;16750111],has_trail:1b}]}}}}

execute if score @s orange_timer matches 75 run summon firework_rocket ^ ^1.5 ^2 {Tags:[sniper_rocket],ShotAtAngle:1b,LifeTime:100,CustomName:{"bold":true,"color":"white","shadow_color":-26368,"text":"☁霧霾火箭☁"},FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16777215],fade_colors:[I;16750111],has_trail:1b}]}}}}

execute if score @s orange_timer matches 65 run function thecookieorange:mob/stray_sniper/calculate_motion

execute if score @s orange_timer matches 75 run function thecookieorange:mob/stray_sniper/calculate_motion

# 4. 重置階段：120 tick 後重置計時器
execute if score @s orange_timer matches 240.. run scoreboard players set @s orange_timer 0

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:1,RequiredPlayerRange:45,Delay:10,MinSpawnDelay:1200,MaxSpawnDelay:1500,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:stray",PersistenceRequired:1b,OnGround:1b,Health:30f,Tags:["orange.wind.charge.stray.sniper"],CustomName:{"bold":true,"color":"gold","shadow_color":-1,"translate":"entity.cookieorange_res.orange_wind_charge_stray_sniper"},equipment:{chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:copper",pattern:"minecraft:eye"},"minecraft:enchantments":{"blast_protection":4}}},head:{id:"minecraft:waxed_copper_grate",count:1},mainhand:{id:"minecraft:crossbow",count:1},offhand:{id:"minecraft:firework_rocket",count:4,components:{"minecraft:fireworks":{flight_duration:4,explosions:[{shape:"large_ball",colors:[I;16777215],fade_colors:[I;16744448]}]}}}},drop_chances:{chest:0.000,head:0.000,mainhand:0.000,offhand:1.000},attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:follow_range",base:30},{id:"minecraft:knockback_resistance",base:0.6},{id:"minecraft:movement_speed",base:0},{id:"max_health",base:30}]}},weight:1}]}] 1