scoreboard players add @s black_timer 1
execute if score @s black_timer matches 1 run scoreboard players set @s black_mob_health 300

# ==============================================================

execute as @s store result score @s black_king_ghast_health run data get entity @s Health
execute if score @s black_mob_health > @s black_king_ghast_health at @s run function black:mob/king_ghast/recover

# ==============================================================


particle dust{color:1, scale:2} ~ ~2 ~ 4 4 4 0.1 5 force

execute if score @s black_king_ghast_life matches 3.. run function black:mob/king_ghast/kill_king

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:10,MaxNearbyEntities:2,RequiredPlayerRange:55,Delay:1,MinSpawnDelay:2400,MaxSpawnDelay:3000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:ghast",Glowing:1b,Team:"black.cult_team",PersistenceRequired:1b,Health:1000f,ExplosionPower:3,Tags:["black.king_ghast"],Passengers:[{id:"minecraft:marker",Tags:["black.king_ghast"]},{id:"minecraft:blaze",Team:"black.cult_team",PersistenceRequired:1b,Health:16f,Tags:["black.king_ghast_crown"],CustomName:"Dinnerbone",attributes:[{id:"minecraft:max_health",base:16},{id:"minecraft:scale",base:2}]}],CustomName:{"bold":true,"color":"#4D4D4D","italic":false,"shadow_color":-13421773,"text":"**==||帝王煉獄幽靈||==**","underlined":true},equipment:{head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{"blast_protection":10}}}},drop_chances:{head:0.000},active_effects:[{id:"minecraft:regeneration",amplifier:10,duration:999999,show_particles:1b}],attributes:[{id:"minecraft:armor",base:40},{id:"minecraft:attack_damage",base:20},{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:1000},{id:"minecraft:scale",base:1.5}]}},weight:1}]}] 1