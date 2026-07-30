execute if entity @e[team=white_forest_creature, nbt={HurtTime:9s}, distance=..50] run effect give @s speed 6 2 true

execute unless entity @a[distance=..20] if entity @e[team=white_forest_creature, nbt={HurtTime:9s}, distance=..50] run data modify entity @s angry_at set from entity @e[team=white_invade_creature, distance=..50, limit=1] UUID

execute unless entity @e[team=white_forest_creature, nbt={HurtTime:9s}, distance=..50] if entity @e[team=white_forest_creature, nbt={HurtTime:9s}, distance=..50] run data modify entity @s angry_at set from entity @a[limit=1] UUID

execute if entity @a[distance=..20] if entity @e[team=white_forest_creature, nbt={HurtTime:9s}, distance=..50] run data modify entity @s angry_at set from entity @a[limit=1] UUID


scoreboard players add @s white_timer 1
execute if score @s white_timer matches 100 run effect give @s instant_health 1 0 true
execute if score @s white_timer matches 200.. run scoreboard players set @s white_timer 1


execute if score @s white_timer matches 100 run execute at @s run particle happy_villager ~ ~3 ~ 0.5 0.5 0.5 0.1 20

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:24,RequiredPlayerRange:20,Delay:1,MinSpawnDelay:2400,MaxSpawnDelay:3000,SpawnPotentials:[{data:{entity:{id:"minecraft:iron_golem",DeathLootTable:"minecraft:empty",Team:"white_forest_creature",Health:60f,anger_end_time:400,Tags:["white.forest_protector"],CustomName:{"bold":true,"color":"#F5F5F5","italic":false,"shadow_color":-13401520,"text":"**森林守護者**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:8},{id:"minecraft:attack_knockback",base:1},{id:"minecraft:max_health",base:60},{id:"minecraft:movement_speed",base:0.2}]}},weight:1}]}] 1