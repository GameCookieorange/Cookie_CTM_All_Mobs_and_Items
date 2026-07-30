scoreboard players add @s pink_timer 1

execute if score @s pink_timer matches 10..15 if entity @e[distance=..24, type=!#not_mob, team=!pink_pirate_team] run scoreboard players set @s pink_timer 16
execute if score @s pink_timer matches 10..15 unless entity @e[distance=..24, type=!#not_mob, team=!pink_pirate_team] run scoreboard players set @s pink_timer 10

execute if score @s pink_timer matches 20 run effect give @s glowing 2 0 true

execute if score @s pink_timer matches 20..60 run particle angry_villager ~ ~2 ~ 0.0 1.0 0.0 1 1 normal

execute if score @s pink_timer matches 50..60 run tp @s ^ ^ ^ facing entity @e[distance=..40, type=!#not_mob, team=!pink_pirate_team, limit=1, sort=nearest] feet

execute if score @s pink_timer matches 59..60 at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1.5 0.5

execute if score @s pink_timer matches 60 run summon marker ^ ^1.7 ^1.8 {Tags:[pink.pirate_gunner_marker]}

execute if score @s pink_timer matches 300.. run scoreboard players set @s pink_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:6,MaxNearbyEntities:10,RequiredPlayerRange:18,Delay:1,MinSpawnDelay:100,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:vindicator",Team:"pink_pirate_team",Health:20f,Tags:["pink.pirate_gunner"],CustomName:{"bold":true,"color":"#f058d2","italic":false,"shadow_color":-5526613,"text":"海盜槍炮兵","underlined":true},equipment:{head:{id:"minecraft:polished_blackstone_stairs",count:1},mainhand:{id:"minecraft:crossbow",count:1,components:{"minecraft:enchantments":{"piercing":1,"infinity":1}}},offhand:{id:"minecraft:tnt",count:2}},drop_chances:{head:0.000,mainhand:0.000,offhand:0.500},attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:attack_knockback",base:1.8},{id:"minecraft:follow_range",base:30},{id:"minecraft:max_health",base:20},{id:"minecraft:movement_speed",base:0.13},{id:"minecraft:oxygen_bonus",base:20},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1