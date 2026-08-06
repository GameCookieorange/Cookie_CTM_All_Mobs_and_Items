scoreboard players add @s green_timer 1

execute if score @s green_timer matches 10..15 if entity @e[tag=!green.is_party_creeper, tag=!green.not_party_creeper, type=!#minecraft:not_mob ,distance=..30] at @s run scoreboard players set @s green_timer 16
execute if score @s green_timer matches 10..15 unless entity @e[tag=!green.is_party_creeper, tag=!green.not_party_creeper, type=!#minecraft:not_mob ,distance=..30] at @s run scoreboard players set @s green_timer 10

execute if score @s green_timer matches 160 at @s run effect give @s glowing 2 1 true
execute if score @s green_timer matches 160..190 at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 1 normal

execute if score @s green_timer matches 160 run execute store result score @s green_number_value run random value 1..4

execute if score @s green_timer matches 200 if score @s green_number_value matches 2..4 at @s run playsound entity.generic.extinguish_fire hostile @a ~ ~ ~ 1 1

execute if score @s green_timer matches 200 if score @s green_number_value matches 2..4 run data merge entity @s {Motion:[0.0, 1.0, 0.0]} 

execute if score @s green_timer matches 200 if score @s green_number_value matches 1 at @s run playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 2 1

execute if score @s green_timer matches 200..220 if score @s green_number_value matches 1 at @s run particle firework ~ ~ ~ 0.2 0.2 0.2 0.1 5 normal

execute if score @s green_timer matches 200 if score @s green_number_value matches 1 run data merge entity @s {Motion:[0.0, 1.8, 0.0]}

execute if score @s green_timer matches 220 if score @s green_number_value matches 1 at @s run particle explosion ~ ~1 ~ 1.5 1.5 1.5 3 15 normal
execute if score @s green_timer matches 220 if score @s green_number_value matches 1 run data merge entity @s {ignited:1b, Fuse:1}

execute if score @s green_timer matches 250.. run scoreboard players set @s green_timer 0

execute if score @s green_timer matches 100..220 at @s run particle firework ~ ~ ~ 0.4 0.2 0.4 0 2 normal

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:14,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:2000,MaxSpawnDelay:2200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["green_creeper_hat"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"cookieorange_res:green/green_creeper_hat","minecraft:custom_data":{green_creeper_hat:1b}}}}}],Team:"green_party_creeper",Health:18f,powered:0b,ExplosionRadius:3b,Fuse:30,Motion:[0.0,1.0,0.0],Tags:["green.firework_creeper","green.is_party_creeper"],CustomName:{"bold":true,"color":"#9bc59e","italic":false,"shadow_color":-13146297,"text":"煙火苦力怕","underlined":false},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{"feather_falling":10,"blast_protection":10}}}},drop_chances:{feet:0.000},attributes:[{id:"minecraft:attack_damage",base:20},{id:"minecraft:max_health",base:18},{id:"minecraft:scale",base:0.8}]}},weight:1}]}] 1