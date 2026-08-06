scoreboard players add @s orange_timer 1

execute if score @s orange_timer matches ..12 run effect give @s speed 1 0 true

execute if score @s orange_timer matches ..28 run function orange:mob/rat/rat_ground

execute if score @s orange_timer matches ..45 run data merge entity @s {Silent:1b}


execute if score @s orange_timer matches 10..12 unless entity @e[type=#minecraft:attack_entity, distance=..6] run scoreboard players set @s orange_timer 10
execute if score @s orange_timer matches -100..12 if entity @e[type=#minecraft:attack_entity, distance=..6] run scoreboard players set @s orange_timer 15

execute if score @s orange_timer matches ..12 at @s run particle dust_color_transition{from_color:[0.439,0.376,0.059],to_color:[0.412,0.204,0.071],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.01 10 force

execute if score @s orange_timer matches 15..45 run effect give @s slowness 1 1 true
execute if score @s orange_timer matches 15..45 at @s run particle dust_color_transition{from_color:[0.812,0.761,0.333],to_color:[0.941,0.459,0.310],scale:1} ~ ~ ~ 0.2 0.2 0.2 0.01 10
execute if score @s orange_timer matches 40 at @s run playsound cookieorange_res:custom.mob.orange.jump hostile @a ~ ~ ~ 0.8 0.4 0.5 

execute if score @s orange_timer matches 45.. run data merge entity @s {Silent:0b}


execute if score @s orange_timer matches 45 run function orange:mob/rat/rat_attack

execute if score @s orange_timer matches 300 run data merge entity @s {Motion:[0.0,0.8,0.0]}
execute if score @s orange_timer matches 320.. run scoreboard players set @s orange_timer -120

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:3,MaxNearbyEntities:12,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:550,MaxSpawnDelay:560,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:silverfish",Health:12f,Tags:["orange.mob","orange.mine_rat"],CustomName:{"bold":true,"color":"#FF9538","italic":false,"shadow_color":-12773104,"text":"掘地鼠","underlined":false},attributes:[{id:"minecraft:armor",base:2},{id:"minecraft:attack_damage",base:2},{id:"minecraft:attack_knockback",base:1},{id:"minecraft:follow_range",base:20},{id:"minecraft:max_health",base:12},{id:"minecraft:safe_fall_distance",base:20},{id:"minecraft:scale",base:1.8}]}},weight:1}]}] 1


