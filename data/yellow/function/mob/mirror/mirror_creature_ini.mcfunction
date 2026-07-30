# scoreboard players add @s yellow_timer 1

# execute if score @s yellow_timer matches 200

execute as @e[type=#minecraft:throwable_or_projectile, distance=..5, tag=!yellow_reflection] at @s run tag @s add yellow_reflection

# execute if entity @e[type=#minecraft:throwable_or_projectile, distance=..4, tag=yellow_reflection] at @s run effect give res

execute at @s run particle firework ~ ~1 ~ 1.5 1.5 1.5 0.01 1 normal

execute as @s[nbt={HurtTime:10s}] at @s run playsound block.glass.break hostile @a ~ ~ ~ 1 1.2

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:8,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:skeleton",Glowing:1b,Health:14f,Tags:["yellow.mirror_creature"],CustomName:{"bold":true,"color":"#EDEBAF","italic":false,"shadow_color":-7104137,"text":"稜鏡生物","underlined":true},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:iron",pattern:"minecraft:ward"},"minecraft:enchantments":{"thorns":1}}},head:{id:"minecraft:glass",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:enchantments":{"thorns":1}}}},drop_chances:{feet:0.000,head:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:max_health",base:14},{id:"minecraft:movement_speed",base:0.15}]}},weight:1}]}] 1