scoreboard players add @s light_green_timer 1

execute if score @s light_green_timer matches 10..12 if entity @p[distance=..20] run scoreboard players set @s light_green_timer 15

execute if score @s light_green_timer matches 10..12 unless entity @p[distance=..20] run scoreboard players set @s light_green_timer 10 

execute if score @s light_green_timer matches 20 run function light_green:mob/queen_slime/summon_slime_spawn

execute if score @s light_green_timer matches 80 run effect give @s glowing 1

execute if score @s light_green_timer matches 100 as @e[tag=light_green.slime_spawn, type=falling_block, sort=nearest, limit=1] run tp ~ ~0.1 ~

execute if score @s light_green_timer matches 400.. run scoreboard players set @s light_green_timer 0

particle dragon_breath ~ ~1.5 ~ 1 1 1 0.02 2 normal
# ====================================================== 

scoreboard players add @s light_green_debug 1
execute as @e[type=frog, distance=..4.5] if score @s light_green_debug matches 1 run execute at @s run tp @s ^ ^ ^ facing entity @e[limit=1, sort=nearest, type=slime, tag=light_green.queen_slime] eyes
execute if score @s light_green_debug matches 2 as @e[type=frog, distance=..4.5] run function light_green:mob/queen_slime/frog_attack/calculate_attack
execute if score @s light_green_debug matches 2 as @e[type=tadpole, distance=..4.5] run kill @s

execute if score @s light_green_debug matches 40 run scoreboard players set @s light_green_debug 0

# ======================================================


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:4,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:1600,MaxSpawnDelay:2000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:slime",Team:"light_green_slime",Health:40f,Size:1,PersistenceRequired:1b,Tags:["light_green.queen_slime"],CustomName:{"bold":true,"color":"#83D136","italic":false,"shadow_color":-8897166,"text":"**皇后史萊姆**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:attack_knockback",base:3},{id:"minecraft:follow_range",base:30},{id:"minecraft:max_health",base:40},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:scale",base:3}]}},weight:1}]}] 1