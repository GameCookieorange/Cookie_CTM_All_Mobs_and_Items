execute if block ~ ~ ~ #minecraft:passable run effect give @s glowing 1 1 true
execute unless block ~ ~ ~ #minecraft:passable run effect clear

execute if predicate purple:bright run kill @s

data modify entity @s[tag=!purple.has_owner] owner set from entity @e[type=evoker, tag=purple.deepdark_wizard, limit=1, sort=nearest, distance=..10] UUID

tag @s[tag=!purple.has_owner] add purple.has_owner

# give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:12,MaxNearbyEntities:6,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:1600,MaxSpawnDelay:1800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:vex",Health:16f,life_ticks:1800,Tags:["purple.hallway_ghost","purple.mobs"],CustomName:{"bold":true,"color":"#BC74DB","italic":false,"shadow_color":-13887411,"translate":"長廊幽靈","underlined":true},equipment:{mainhand:{id:"minecraft:blaze_rod",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:enchantments":{"fire_aspect":2}}},offhand:{id:"minecraft:breeze_rod",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:scale",base:1.5},{id:"minecraft:max_health",base:14},{id:"minecraft:attack_damage",base:7},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:follow_range",base:26},{id:"minecraft:attack_knockback",base:1.5}]}},weight:1}]}] 1