scoreboard players add @s brown_timer 1 

execute if score @s brown_timer matches 10..15 if entity @p[distance=..50] run scoreboard players set @s brown_timer 16
execute if score @s brown_timer matches 10..15 unless entity @p[distance=..50] run scoreboard players set @s brown_timer 10


execute if score @s brown_timer matches 20 run function brown:clone/clone

execute if score @s brown_timer matches 1000.. run scoreboard players set @s brown_timer 0

execute as @s[nbt={HurtTime:10s}] at @s run playsound entity.player.hurt hostile @a ~ ~ ~

execute if entity @a[distance=..40] store result score @s brown_clone_test run data get entity @p UUID

execute unless score @s brown_clone_test = @s brown_clone_target run function brown:clone/strength


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:3,MaxNearbyEntities:1,RequiredPlayerRange:30,Delay:0,MinSpawnDelay:3400,MaxSpawnDelay:4000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:wither_skeleton",Silent:1b,PersistenceRequired:1b,Team:"brown_steampunk",Health:50f,Tags:["brown.clone","brown.steampunk"],CustomName:{"bold":true,"color":"#AB8456","italic":false,"shadow_color":-5723992,"text":"**克隆體**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:max_health",base:30},{id:"minecraft:knockback_resistance",base:0.3},{id:"minecraft:water_movement_efficiency",base:0.8},{id:"minecraft:explosion_knockback_resistance",base:0.3}]}},weight:1}]}] 1