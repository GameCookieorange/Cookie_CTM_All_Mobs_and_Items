execute at @s if entity @e[type=cat, tag=green.panic_creature, distance=..8] run particle dripping_water ^ ^2 ^-0.6 0.2 0.6 0.2 0.1 1

# scoreboard players add @s[tag=!green.has_init] green_debug 1

# execute if score @s green_debug matches 10 run summon cat ~ ~0.5 ~ {Tags:["green.panic_creature"]}

# execute if score @s green_debug matches 11.. run function green:mob/panic_creeper/reset

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:3,RequiredPlayerRange:20,Delay:0,MinSpawnDelay:2400,MaxSpawnDelay:2800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Health:18f,ExplosionRadius:3b,Fuse:30,Tags:["green.panic_creeper","green.not_party_creeper"],Passengers:[{id:"minecraft:marker",Tags:["green.cat_marker"]}],CustomName:{"bold":true,"color":"#B8FF5C","italic":false,"shadow_color":-15567565,"translate":"恐慌苦力怕","underlined":true},attributes:[{id:"minecraft:follow_range",base:8},{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:0.24}]}},weight:1}]}] 1