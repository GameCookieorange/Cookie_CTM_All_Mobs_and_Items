scoreboard players add @s magenta_timer 1

execute if entity @s[nbt={HurtTime:10s}] at @s run playsound entity.iron_golem.repair master @a[distance=..12] ~ ~ ~ 0.8 0.8 1 

execute if score @s magenta_timer matches 20 run function magenta:steam_man/choose

execute if score @s magenta_timer matches 20 at @s run playsound block.fire.extinguish master @a[distance=..12] ~ ~ ~ 1 1.6 1

execute if score @s magenta_timer matches 20..40 at @s run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.05 2 normal

execute if score @s magenta_timer matches 160 run scoreboard players set @s magenta_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:2,MaxNearbyEntities:8,RequiredPlayerRange:14,Delay:1,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie",Silent:1b,Health:24f,IsBaby:0b,InWaterTime:99999,Tags:["magenta.mob","magenta.steam_man"],CustomName:{"bold":true,"color":"light_purple","italic":false,"shadow_color":-6924505,"text":"蒸汽人","underlined":true},equipment:{feet:{id:"minecraft:chainmail_boots",count:1},legs:{id:"minecraft:copper_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:snout"},"minecraft:enchantment_glint_override":true}},chest:{id:"minecraft:copper_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"},"minecraft:enchantment_glint_override":true}},head:{id:"minecraft:waxed_oxidized_copper_bulb",count:1,components:{"minecraft:block_state":{lit:"true",powered:"true"}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:explosion_knockback_resistance",base:0.6},{id:"minecraft:knockback_resistance",base:0.3},{id:"minecraft:max_health",base:24},{id:"minecraft:movement_speed",base:0.18}]}},weight:1}]}] 1