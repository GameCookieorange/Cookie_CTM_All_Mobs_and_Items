scoreboard players add @s orange_timer 1

team join orange_falling_creeper

execute if entity @a[distance=..5] run effect give @a[distance=..5] minecraft:slowness 2 0 true

execute if entity @a[distance=..4] run execute as @a[distance=..3] run damage @s 1 minecraft:freeze


execute if score @s orange_timer matches 75 at @s run effect give @s minecraft:glowing 4 1 true

execute if score @s orange_timer matches 75 at @s run playsound minecraft:entity.breeze.idle_air ambient @a ~ ~ ~ 0.5 2

# ========================================

execute if score @s orange_timer matches 70..130 at @s run particle dust_color_transition{from_color:[0.000,1.000,1.000],to_color:[0.871,0.933,1.000],scale:1} ~ ~1 ~ 0 2 0 1 8

execute if score @s orange_timer matches 80..130 at @s run tp @s ^ ^ ^ ~30 ~
execute if score @s orange_timer matches 80..130 at @s run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.4 1

# ========================================

execute if score @s orange_timer matches 75 run tag @s add current_center

# execute if score @s orange_timer matches 80..130 at @s as @e[distance=4..9, type=!minecraft:creeper] at @s facing entity @e[tag=current_center,limit=1, distance=5..10] eyes run tp @s ^ ^ ^0.065

# execute if score @s orange_timer matches 80..130 at @s as @e[distance=1..4, type=!minecraft:creeper] at @s facing entity @e[tag=current_center,limit=1, distance=1..5] eyes run tp @s ^ ^ ^0.1

# [Distance: 4-7]
execute if score @s orange_timer matches 80..130 at @s as @e[distance=4..7,type=!#minecraft:hostile] at @s facing entity @e[tag=current_center,limit=1,distance=4..7] feet rotated ~ 0 positioned ^ ^ ^0.05 if block ^ ^ ^0.5 #thecookieorange:passable run tp @s ^ ^ ^

# [Distance: 1-4]
execute if score @s orange_timer matches 80..130 at @s as @e[distance=1..4,type=!#minecraft:hostile] at @s facing entity @e[tag=current_center,limit=1,distance=1..4] feet rotated ~ 0 positioned ^ ^ ^0.1 if block ^ ^ ^0.5 #thecookieorange:passable run tp @s ^ ^ ^


execute if score @s orange_timer matches 130 run tag @s remove current_center

execute if score @s orange_timer matches 250 run scoreboard players set @s orange_timer 0

# ========================================

scoreboard players add @s orange_debug 1

execute if score @s orange_debug matches 1000.. run data merge entity @s {ignited:1b,Fuse:20}

execute if score @s orange_debug matches 1100.. run scoreboard players set @s orange_debug 0 

# ========================================

scoreboard players add @s orange_falling_timer 1

execute if score @s orange_falling_timer matches 2 run tp @s ~ ~-0.05 ~

execute if score @s orange_falling_timer matches 2 run scoreboard players set @s orange_falling_timer 0

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:4,MaxNearbyEntities:2,RequiredPlayerRange:20,Delay:10,MinSpawnDelay:400,MaxSpawnDelay:500,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",DeathLootTable:"minecraft:empty",Silent:1b,NoGravity:1b,Glowing:1b,OnGround:1b,PersistenceRequired:0b,Health:4f,powered:1b,ExplosionRadius:0b,Fuse:40,Tags:["orange.wind.charge.creeper.falling"],CustomName:{"bold":true,"color":"white","shadow_color":-8539649,"translate":"entity.cookieorange_res.orange_wind_charge_falling_creeper"},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2000,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:4f},{id:"minecraft:attack_damage",base:1},{id:"minecraft:follow_range",base:16},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:movement_speed",base:0},{id:"minecraft:safe_fall_distance",base:999}]}},weight:1}]}] 1