execute at @s run particle dust_color_transition{from_color:[1.000,1.000,0.502],to_color:[1.000,0.427,0.220],scale:1} ~ ~1 ~ 1 1 1 0 5 normal

effect give @s fire_resistance 5 0 false

scoreboard players add @s green_timer 1

execute if score @s green_timer matches 400 unless entity @s[nbt={attributes:[{id:"minecraft:scale",base:1.2}]}] run function green:mob/phoenix_creeper/set_value

execute if score @s green_timer matches 401.. run scoreboard players set @s green_timer 390

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:12,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1000,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Team:"green.party_creeper",PersistenceRequired:1b,Health:60f,powered:1b,ExplosionRadius:3b,Fuse:25,Tags:["green.phoenix_creeper"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["green.summon_core"]}],CustomName:{"bold":true,"color":"#1A9626","italic":false,"shadow_color":-3014853,"text":"**鳳凰苦力怕**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:20},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:max_health",base:60},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:scale",base:1.2}]}},weight:1}]}] 1

# /summon magma_cube ~ ~ ~ {Silent:1b,Invulnerable:0b,Glowing:1b,Team:"green.creeper_core",PersistenceRequired:1b,NoAI:1b,Health:500f,Tags:["green.creeper_core"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999}],attributes:[{id:"minecraft:max_health",base:500}]}

# execute if score @s green_timer matches 80 run summon creeper ~ ~ ~ {Team:"green.party_creeper",PersistenceRequired:1b,Health:30f,powered:1b,ExplosionRadius:2b,Tags:["green.phoenix_creeper"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["green.summon_core"]}],CustomName:{"bold":true,"color":"#1A9626","italic":false,"shadow_color":-3014853,"text":"**鳳凰苦力怕**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.8}]}