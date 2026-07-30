scoreboard players add @s light_gray_timer 1
execute if score @s light_gray_timer matches 300 run scoreboard players set @s light_gray_timer 0

# =================================================

execute if score @s light_gray_timer matches 20..21 run execute unless entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..16] run scoreboard players set @s light_gray_timer 0
execute if score @s light_gray_timer matches 20..21 run execute if entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..16] run scoreboard players set @s light_gray_timer 25

execute as @s if score @s light_gray_timer matches 80..120 run particle ash ~ ~2 ~ 1 1 1 0.05 2

execute if score @s light_gray_timer matches 80 run effect give @s glowing 5 1 true

# =================================================

execute if score @s light_gray_timer matches 120 run kill @e[tag=light_gray.dash_point, sort=nearest, limit=1]

execute if score @s light_gray_timer matches 120..200 run function light_gray:mob/skeleton/slayer_particle
execute if score @s light_gray_timer matches 120..200 at @s run tp @s ^ ^ ^ ~15 ~

execute if score @s light_gray_timer matches 115 run playsound cookieorange_res:custom.mob.light_gray.slayer_spin master @a ~ ~ ~ 0.6 1


execute if score @s light_gray_timer matches 200 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1


# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:3,SpawnRange:4,MaxNearbyEntities:6,RequiredPlayerRange:14,Delay:0,MinSpawnDelay:800,MaxSpawnDelay:1000,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:skeleton",Health:16f,Motion:[0.0,0.2,0.0],Tags:["light_gray.skeleton_slayer"],Team:"light_gray_machine_team",CustomName:{"bold":true,"color":"#9DBFC9","italic":false,"shadow_color":-11316905,"text":"切割者","underlined":false},equipment:{feet:{id:"minecraft:iron_boots",count:1},legs:{id:"minecraft:iron_leggings",count:1},chest:{id:"minecraft:netherite_chestplate",count:1,components:{trim:{material:"minecraft:netherite",pattern:"minecraft:eye"},enchantment_glint_override:true}},head:{id:"minecraft:anvil",count:1,components:{block_state:{facing:"south"}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000},attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:16}]}},weight:1}]}] 1

