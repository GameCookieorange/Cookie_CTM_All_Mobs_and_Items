scoreboard players add @s cyan_timer 1
scoreboard players add @s cyan_debug 1
execute if entity @e[type=!#not_mob, distance=..5, tag=!cyan.dark_matter_creeper, tag=!cyan.abyssal_dark_matter_creeper] run scoreboard players add @s cyan_debug 5
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s cyan_debug 5
execute if entity @s[nbt={HurtTime:10s}] run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.6 1.5

execute if score @s cyan_timer matches 1 run effect give @s instant_health 1 100 true
execute if score @s cyan_timer matches 10 run particle squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
# execute if score @s cyan_timer matches 5 run particle glow_squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.01 10 force
execute if score @s cyan_timer matches 10.. run scoreboard players set @s cyan_timer 0

# execute if entity @a[distance=..5] run effect give @a[distance=..5] darkness 2 2 false


# ===========================================

execute if score @s cyan_debug matches 1000.. run particle glow_squid_ink ~ ~ ~ 1 1 1 0.5 10 force
execute if score @s cyan_debug matches 1200.. run data merge entity @s {ignited:1b,Fuse:1}

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:6,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1200,MaxSpawnDelay:1400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:12}},entity:{id:"minecraft:creeper",Silent:1b,Glowing:1b,DeathLootTable:"minecraft:empty",Team:"cyan_dark_matter_team",Health:10f,ExplosionRadius:3,Fuse:30,Tags:["cyan.dark_matter_creeper","cyan.space_creature"],CustomName:{"bold":true,"color":"#58ac98","italic":false,"shadow_color":-12292031,"text":"反物質"},data:{cyan_dark_matter_creeper:1b},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2004,show_particles:0b},{id:"minecraft:slow_falling",amplifier:2,duration:2004,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:max_health",base:10}]}},weight:1}]}] 1