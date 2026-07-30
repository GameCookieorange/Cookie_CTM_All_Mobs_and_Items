scoreboard players add @s light_green_timer 1

execute if score @s light_green_timer matches 10..15 if entity @e[type=#minecraft:attack_entity, distance=..13] run scoreboard players set @s light_green_timer 16
execute if score @s light_green_timer matches 10..15 unless entity @e[type=#minecraft:attack_entity, distance=..13] run scoreboard players set @s light_green_timer 10

execute if score @s light_green_timer matches 20 run effect give @s glowing 2 0 true

execute if score @s light_green_timer matches 50..70 run tp @s ^ ^ ^ facing entity @n[type=#minecraft:attack_entity] feet

execute if score @s light_green_timer matches 60 run summon marker ~ ~1 ~ {Tags:["light_green.hunter_hook_marker"]}
execute if score @s light_green_timer matches 60 run tag @s add light_green.swamp_hunter_using_skill

execute if entity @e[distance=..13, tag=light_green.being_hooked, sort=nearest, limit=1] if score @s light_green_timer matches 70..160 run tp @s ^ ^ ^ facing entity @e[distance=..13, tag=light_green.being_hooked, sort=nearest, limit=1] eyes

execute if score @s light_green_timer matches 160 run tag @s remove light_green.swamp_hunter_using_skill

execute if score @s light_green_timer matches 400.. run scoreboard players set @s light_green_timer 0

# =============================================================================

scoreboard players add @s light_green_debug 1

execute if score @s light_green_debug matches 1 run tag @s remove light_green.taking_sword
execute if score @s light_green_debug matches 1 as @s[tag=!light_green.taking_sword] at @s unless items entity @s weapon.mainhand bow run item replace entity @s weapon.mainhand with bow 1

execute if score @s light_green_debug matches 151 run tag @s add light_green.taking_sword
execute if score @s light_green_debug matches 152 as @s[tag=light_green.taking_sword] at @s unless items entity @s weapon.mainhand wooden_sword run item replace entity @s weapon.mainhand with wooden_sword 1

execute if score @s light_green_debug matches 300.. run scoreboard players set @s light_green_debug 0

effect clear @s poison
# =============================================================================


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:4,MaxNearbyEntities:4,RequiredPlayerRange:16,Delay:1,MinSpawnDelay:1000,MaxSpawnDelay:1200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:bogged",Health:24f,sheared:1b,Tags:["light_green.swamp_hunter"],Passengers:[{id:"minecraft:marker",Tags:["light_green.clear_hook"]}],CustomName:{"bold":true,"color":"#439620","italic":false,"shadow_color":-8560119,"text":"泥沼獵手","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":1920265,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:dune"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":623881,"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:snout"}}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":1161858,"minecraft:trim":{material:"minecraft:emerald",pattern:"minecraft:host"}}},offhand:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:11127879,custom_effects:[{id:"minecraft:poison",amplifier:0,duration:500,show_particles:1b},{id:"minecraft:oozing",amplifier:0,duration:1000,show_particles:1b}]},"minecraft:max_stack_size":99}}},drop_chances:{feet:0.000,chest:0.000,head:0.000,offhand:0.000},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:24},{id:"minecraft:movement_speed",base:0.22}]}},weight:1}]}] 1