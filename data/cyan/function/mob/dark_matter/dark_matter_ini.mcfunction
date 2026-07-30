scoreboard players add @s cyan_timer 1
execute if score @s cyan_timer matches 1 at @s run playsound entity.wither.ambient hostile @a ~ ~ ~ 0.4 0.1

execute if score @s cyan_timer matches 10..15 at @s if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..22] run scoreboard players set @s cyan_timer 16

execute if score @s cyan_timer matches 10..15 at @s unless entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..22] run scoreboard players set @s cyan_timer 200

execute if score @s cyan_timer matches 60 run function cyan:mob/dark_matter/skill/teleport
execute if score @s cyan_timer matches 110 run tp @s @e[type=marker, tag=cyan.dark_matter_marker_can_teleport, sort=nearest, limit=1, distance=..40]
execute if score @s cyan_timer matches 110 at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1.4



# execute if score @s cyan_timer matches 80 run effect give @s glowing 3 1 true
execute if score @s cyan_timer matches 120 run function cyan:mob/dark_matter/skill/choose
execute if score @s cyan_timer matches 151 at @s run playsound entity.wither.ambient hostile @a ~ ~ ~ 0.4 0.1

# execute if score @s cyan_timer matches 240 run function cyan:mob/dark_matter/skill/teleport
# execute if score @s cyan_timer matches 290 run tp @s @e[type=marker, tag=cyan.dark_matter_marker_can_teleport, sort=nearest, limit=1, distance=..40]
# execute if score @s cyan_timer matches 290 at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1.4

execute if score @s cyan_timer matches 200.. run scoreboard players set @s cyan_timer 0

effect give @s invisibility 1 0 true

particle squid_ink ~ ~2.8 ~ 0.2 0.2 0.2 0.05 7 normal
particle smoke ~ ~1.5 ~ 0.8 0.8 0.8 0.01 10 normal


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:2,RequiredPlayerRange:30,Delay:0,MinSpawnDelay:3000,MaxSpawnDelay:3600,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:wither_skeleton",Silent:1b,PersistenceRequired:1b,Health:75f,Team:"cyan_dark_matter",Tags:["cyan.dark_matter","cyan.space_creature"],CustomName:{"bold":true,"color":"#553763","italic":false,"shadow_color":-11566994,"translate":"<***暗物質***>","underlined":true},equipment:{chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":4326497,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:silence"},"minecraft:enchantment_glint_override":true,"minecraft:enchantments":{projectile_protection:4}}},head:{id:"minecraft:chorus_flower",count:1,components:{"minecraft:enchantment_glint_override":true}},mainhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:attribute_modifiers":[{id:"base_attack_damage",type:"attack_damage",amount:4,operation:"add_value"}]}}},drop_chances:{chest:0.000,head:0.000,mainhand:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:8},{id:"minecraft:armor_toughness",base:2},{id:"minecraft:attack_damage",base:5.5},{id:"minecraft:attack_knockback",base:1.5},{id:"minecraft:explosion_knockback_resistance",base:0.6},{id:"minecraft:follow_range",base:100},{id:"minecraft:jump_strength",base:0.4},{id:"minecraft:knockback_resistance",base:0.6},{id:"minecraft:max_health",base:75},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:safe_fall_distance",base:999},{id:"minecraft:scale",base:1.2},{id:"minecraft:step_height",base:3},{id:"minecraft:water_movement_efficiency",base:1}]}},weight:1}]}] 1