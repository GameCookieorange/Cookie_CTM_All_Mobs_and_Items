scoreboard players add @s purple_timer 1
scoreboard players add @s purple_debug 1

execute if score @s purple_debug matches 1 run execute store result score @s purple_wizard_name run data get entity @s UUID


execute if score @s purple_debug matches 10 run function purple:mob/deepdark_wizard/break/break_area

execute if score @s purple_debug matches 20.. run scoreboard players set @s purple_debug 2

execute if score @s purple_timer matches 10..15 if entity @e[type=!#not_mob, tag=!purple.mobs, sort=nearest, limit=1, distance=..20] run scoreboard players set @s purple_timer 16
execute if score @s purple_timer matches 10..15 unless entity @e[type=!#not_mob, tag=!purple.mobs,  sort=nearest, limit=1, distance=..20] run scoreboard players set @s purple_timer 10

execute if score @s[tag=!purple.got_silence] purple_timer matches 18 at @s run playsound entity.evoker.celebrate hostile @a ~ ~ ~ 1.2 0.7
execute if score @s purple_timer matches 20..80 if entity @e[type=!#not_mob, tag=!purple.mobs, distance=..40, limit=1, sort=nearest] run tp @s ^ ^ ^ facing entity @e[type=!#not_mob, tag=!purple.mobs, distance=..40, limit=1, sort=nearest] feet
execute if score @s purple_timer matches 20..80 if entity @e[type=!#not_mob, tag=!purple.mobs, distance=..40, limit=1, sort=nearest] at @s run particle squid_ink ~ ~0.5 ~ 0.25 0.25 0.25 0.2 10 normal
execute if score @s[tag=!purple.got_silence] purple_timer matches 80 at @s run playsound entity.evoker.celebrate hostile @a ~ ~ ~ 1.2 1
execute if score @s purple_timer matches 80 as @e[type=!#not_mob, tag=!purple.mobs, distance=..40, limit=1, sort=nearest] run function purple:mob/deepdark_wizard/skill_3/snap

execute if score @s purple_timer matches 700.. run scoreboard players set @s purple_timer 0

effect clear @s[nbt={active_effects:[{"id":"minecraft:glowing"}]}] glowing

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:2,MaxNearbyEntities:2,RequiredPlayerRange:18,Delay:0,MinSpawnDelay:3800,MaxSpawnDelay:4800,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:evoker",OnGround:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:60f,Motion:[0.0,1.0,0.0],Tags:["purple.deepdark_wizard","purple.mobs"],CustomName:{"bold":true,"color":"#450C6B","italic":false,"shadow_color":-8447302,"translate":"***閣黑法師***","underlined":true},equipment:{head:{id:"minecraft:dragon_head",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{head:0.000},attributes:[{id:"minecraft:knockback_resistance",base:0.6},{id:"minecraft:follow_range",base:40},{id:"minecraft:max_health",base:60},{id:"minecraft:step_height",base:1.5},{id:"minecraft:armor",base:10},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:safe_fall_distance",base:10}]}},weight:1}]}] 1