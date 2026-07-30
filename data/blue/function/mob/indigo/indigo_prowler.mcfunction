effect give @s[tag=blue.indigo_prowler_invincible] resistance 1 5 true
effect give @s[tag=blue.indigo_prowler_invincible] glowing 1 1 true

scoreboard players add @s[tag=!blue.indigo_prowler_invincible] blue_debug 1

execute if score @s blue_debug matches 1.. at @s run particle block_crumble{block_state:amethyst_cluster} ~ ~1 ~ 1 1 1 0.1 10 normal
execute if score @s blue_debug matches 400.. at @s run function blue:mob/indigo/reset

scoreboard players add @s blue_timer 1

execute if score @s blue_timer matches 10..12 unless entity @a[distance=..12] run scoreboard players set @s blue_timer 10

execute if score @s blue_timer matches 10..12 if entity @a[distance=..12] run scoreboard players set @s blue_timer 15

execute if score @s blue_timer matches 40 run function blue:mob/indigo/break/break_area

execute if score @s blue_timer matches 60.. run scoreboard players set @s blue_timer 0


execute if entity @s[nbt={HurtTime:10s}] run playsound block.amethyst_block.resonate hostile @a ~ ~ ~ 1.5 1.2

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:1,MaxNearbyEntities:3,RequiredPlayerRange:26,Delay:0,MinSpawnDelay:3600,MaxSpawnDelay:4000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:drowned",OnGround:1b,Silent:0b,PersistenceRequired:1b,Health:30f,Motion:[0.0,1.0,0.0],Tags:["blue.drowned_prowler_elite","blue.indigo_prowler_invincible","blue.ocean_creature"],Team:"blue_ocean_creature",CustomName:{"bold":true,"color":"#39008F","italic":false,"shadow_color":-9025117,"text":"**靛藍巡弋者**","underlined":true},data:{blue.drowned_prowler_elite:1b},equipment:{feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:raiser"},"minecraft:enchantments":{"depth_strider":2,"soul_speed":2}}},legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:snout"},"minecraft:enchantment_glint_override":true}},chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:snout"},"minecraft:enchantments":{"projectile_protection":4,"protection":4,"vanishing_curse":1}}},head:{id:"minecraft:budding_amethyst",count:1},mainhand:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"vanishing_curse":1,"impaling":1}}},offhand:{id:"minecraft:axolotl_bucket",count:1,components:{"minecraft:bucket_entity_data":{Health:30f}}}},drop_chances:{feet:0.000,head:0.000,mainhand:0.000,offhand:1.000},attributes:[{id:"minecraft:follow_range",base:100},{id:"minecraft:max_health",base:30},{id:"minecraft:knockback_resistance",base:0.6}]}},weight:1}]}] 1