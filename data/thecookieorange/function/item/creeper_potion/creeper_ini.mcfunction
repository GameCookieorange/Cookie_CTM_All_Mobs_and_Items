scoreboard players add @s orange_timer 1

execute if score @s orange_timer matches 75 at @s run playsound minecraft:entity.breeze.idle_air ambient @a ~ ~ ~ 5 2

execute if score @s orange_timer matches 150 at @s run playsound minecraft:entity.breeze.idle_air ambient @a ~ ~ ~ 5 2

# ========================================

execute if score @s orange_timer matches 80..200 at @s run tp @s ^ ^ ^ ~30 ~

execute if score @s orange_timer matches 60..200 at @s run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.2 1 force

# ========================================

execute if score @s orange_timer matches 60 run effect give @s glowing 10 1 false
execute if score @s orange_timer matches 70 run tag @s add current_center

execute if score @s orange_timer matches 60..200 run particle minecraft:firework ~ ~ ~ 0 3 0 0.01 4

# [Distance: 7-10
# execute if score @s orange_timer matches 80..200 at @s as @e[distance=7..10,type=!minecraft:marker, type=!player] at @s facing entity @e[tag=current_center,limit=1,distance=7..10] feet rotated ~ 0 positioned ^ ^ ^0.025 if block ^ ^ ^0.5 #thecookieorange:passable run tp @s ^ ^ ^

# [Distance: 4-7]
execute if score @s orange_timer matches 80..200 at @s as @e[distance=4..7,type=!minecraft:marker, type=!player, tag=!potion_tracker, tag=!orange_creeper_potion_processed] at @s facing entity @e[tag=current_center,limit=1,distance=4..7] feet rotated ~ 0 positioned ^ ^ ^0.05 if block ^ ^ ^0.5 #thecookieorange:passable run tp @s ^ ^ ^

# [Distance: 1-4]
execute if score @s orange_timer matches 80..200 at @s as @e[distance=1..4,type=!minecraft:marker, type=!player, tag=!potion_tracker, tag=!orange_creeper_potion_processed] at @s facing entity @e[tag=current_center,limit=1,distance=1..4] feet rotated ~ 0 positioned ^ ^ ^0.075 if block ^ ^ ^0.5 #thecookieorange:passable run tp @s ^ ^ ^

# execute if score @s orange_timer matches 80..140 at @s as @e[distance=7..10,type=!minecraft:creeper,] at @s facing entity @e[tag=current_center,limit=1, distance=7..10] eyes run tp @s ^ ^ ^0.025

# execute if score @s orange_timer matches 80..140 at @s as @e[distance=4..7,type=!minecraft:creeper] at @s facing entity @e[tag=current_center,limit=1, distance=4..7] eyes run tp @s ^ ^ ^0.05

# execute if score @s orange_timer matches 80..140 at @s as @e[distance=1..4,type=!minecraft:creeper] at @s facing entity @e[tag=current_center,limit=1, distance=1..4] eyes run tp @s ^ ^ ^0.1


execute if score @s orange_timer matches 200 run tag @s remove current_center


execute if score @s orange_timer matches 260 run scoreboard players set @s orange_timer 0

# ========================================

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:4,MaxNearbyEntities:4,RequiredPlayerRange:10,Delay:10,MinSpawnDelay:600,MaxSpawnDelay:750,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",DeathLootTable:"minecraft:empty",Silent:1b,OnGround:1b,PersistenceRequired:0b,Health:16f,powered:1b,ExplosionRadius:1b,Fuse:25,Tags:["orange.wind.charge.creeper"],CustomName:{"bold":true,"color":"white","shadow_color":-25285,"translate":"entity.cookieorange_res.orange_wind_charge_creeper"},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2000,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:16},{id:"minecraft:attack_damage",base:2},{id:"minecraft:follow_range",base:16},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:safe_fall_distance",base:999}]}},weight:1}]}] 1
