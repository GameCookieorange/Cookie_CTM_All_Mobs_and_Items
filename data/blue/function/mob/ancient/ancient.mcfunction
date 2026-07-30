# scoreboard players add @s blue_timer 1

execute if entity @a[distance=20..70] at @s[tag=blue.ancient_nearby] run tag @s remove blue.ancient_nearby
execute if entity @a[distance=..20] at @s[tag=!blue.ancient_nearby] run tag @s add blue.ancient_nearby

# execute as @s[tag=!blue.ancient_nearby] run give @a apple

effect give @s[tag=!blue.ancient_nearby] resistance 1 10 true
effect give @s[tag=!blue.ancient_nearby] invisibility 1 0 true
effect give @s[tag=blue.ancient_nearby] glowing 1 0 true
execute as @s[tag=!blue.ancient_nearby] at @s run particle dolphin ~ ~ ~ 6 6 6 0 80 normal

execute as @s[tag=blue.ancient_nearby] at @s run particle bubble_pop ~ ~ ~ 9 9 9 1 80 normal
# execute as @s[tag=blue.ancient_nearby] at @s run effect clear

execute as @a[distance=..70, nbt={active_effects:[{id:"minecraft:mining_fatigue",amplifier:2b}]}] run function blue:mob/ancient/effect


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:10,MaxNearbyEntities:2,RequiredPlayerRange:40,Delay:0,MinSpawnDelay:6000,MaxSpawnDelay:8000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:elder_guardian",Team:"blue_ocean_creature",PersistenceRequired:1b,Health:100f,Tags:["blue.ocean_creature","blue.ancient"],CustomName:{"bold":true,"color":"#A28BE0","italic":false,"shadow_color":-12173991,"translate":"**水下巨物**","underlined":true},attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:attack_damage",base:10},{id:"minecraft:scale",base:3},{id:"minecraft:follow_range",base:30}]}},weight:1}]}] 1