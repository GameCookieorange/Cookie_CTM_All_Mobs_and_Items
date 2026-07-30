scoreboard players add @s blue_timer 1

execute if score @s blue_timer matches 10..15 if entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, sort=nearest, limit=1, distance=..20] run scoreboard players set @s blue_timer 16
execute if score @s blue_timer matches 10..15 unless entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, sort=nearest, limit=1, distance=..20] run scoreboard players set @s blue_timer 10

execute if score @s blue_timer matches 20 run effect give @s glowing 3 1 true

execute if score @s blue_timer matches 21..80 rotated as @s run tp @s ^ ^ ^ facing entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, limit=1, sort=nearest]
execute if score @s blue_timer matches 80 at @s run playsound entity.generic.explode hostile @a ^ ^1.5 ^1.5 1.2 0.3
execute if score @s blue_timer matches 80 at @s run particle cloud ^ ^1 ^1.5 0.6 0.6 0.6 0.1 60 normal

execute if score @s blue_timer matches 80 at @s run summon squid ^ ^1.5 ^1.5 {NoGravity:1b,Silent:1b,Glowing:1b,Team:"blue_ocean_army",DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:50f,Age:1,Tags:["blue.ocean_army","blue.launcher_torpedo"],CustomName:{"bold":true,"color":"#7792dc","italic":false,"shadow_color":-15907362,"text":"魚雷飛彈"},data:{blue.squid_torpedo_up:1b},active_effects:[{id:"minecraft:resistance",amplifier:4,duration:9999,show_particles:0b}],attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:max_health",base:50},{id:"minecraft:scale",base:0.4},{id:"minecraft:water_movement_efficiency",base:1}]}


execute if score @s blue_timer matches 520.. run scoreboard players set @s blue_timer 0
# execute if score @s blue_timer matches 300.. run scoreboard players set @s blue_timer 0


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:3,MaxNearbyEntities:10,RequiredPlayerRange:16,Delay:0,MinSpawnDelay:2800,MaxSpawnDelay:3200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:zombie_villager",Team:"blue_ocean_army",PersistenceRequired:1b,Health:44f,IsBaby:0b,CanBreakDoors:1b,ConversionTime:-1,Tags:["blue.ocean_army","blue.launcher"],CustomName:{"bold":true,"color":"#4D2691","italic":false,"shadow_color":-14129521,"text":"**魚雷射手**","underlined":true},equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":1329533,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:sentry"},"minecraft:enchantments":{"vanishing_curse":1}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"blast_protection":30,"vanishing_curse":1},"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:silence"}}},head:{id:"minecraft:waxed_oxidized_lightning_rod",count:1,components:{"minecraft:enchantments":{"projectile_protection":2,"vanishing_curse":1}}},mainhand:{id:"minecraft:dragon_head",count:1,components:{"minecraft:enchantments":{"blast_protection":1,"vanishing_curse":1},"minecraft:enchantment_glint_override":true}},offhand:{id:"minecraft:squid_spawn_egg",count:1,components:{"minecraft:enchantments":{"vanishing_curse":1}}}},drop_chances:{feet:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:max_health",base:44},{id:"minecraft:attack_damage",base:7.5},{id:"minecraft:scale",base:1},{id:"minecraft:movement_speed",base:0.12}],VillagerData:{profession:"minecraft:armorer",type:"minecraft:savanna"},Offers:{}}},weight:1}]}] 1