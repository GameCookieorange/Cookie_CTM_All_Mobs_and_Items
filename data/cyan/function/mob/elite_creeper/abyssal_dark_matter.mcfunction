scoreboard players add @s cyan_timer 1
scoreboard players add @s cyan_debug 1
particle squid_ink ~ ~1 ~ 0.6 0.6 0.6 0.1 5 force
effect give @s resistance 1 50 true
effect give @s slow_falling 1 1 true
effect give @s invisibility 1 1 true

execute if entity @e[type=!#not_mob, distance=..5, tag=!cyan.dark_matter_creeper, tag=!cyan.abyssal_dark_matter_creeper] run scoreboard players remove @s cyan_debug 5
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players remove @s cyan_debug 100
execute if entity @s[scores={cyan_debug=..0}] run scoreboard players set @s cyan_debug 1
execute if entity @s[nbt={HurtTime:10s}] run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.8 0.5

execute if score @s cyan_timer matches 10.. run scoreboard players set @s cyan_timer 0

execute if entity @a[distance=..5] run effect give @a[distance=..5] darkness 2 2 false

# ===========================================

execute if score @s cyan_debug matches 300.. run particle falling_obsidian_tear ~ ~1 ~ 1 1 1 0.1 2 force
execute if score @s cyan_debug matches 600.. run particle portal ~ ~ ~ 1.5 1.5 1.5 1 40 force
execute if score @s cyan_debug matches 800.. run data merge entity @s {ignited:1b,Fuse:1}

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:6,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:2400,MaxSpawnDelay:2800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:12}},entity:{id:"minecraft:creeper",Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",Team:"cyan_abyssal_dark_matter_team",Health:100f,ExplosionRadius:4,Fuse:40,Tags:["cyan.abyssal_dark_matter_creeper","cyan.space_creature"],CustomName:{"bold":true,"color":"#58ac98","italic":false,"shadow_color":-9353615,"text":"**闇黑反物質**"},data:{cyan_abyssal_dark_matter_creeper:1b},attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:max_health",base:100},{id:"minecraft:knockback_resistance",base:0.4}]}},weight:1}]}] 1