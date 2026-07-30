scoreboard players add @s purple_timer 1

# execute if score @s purple_timer matches 10..15 if entity @e[distance=..24, type=!#not_mob] run scoreboard players set @s purple_timer 16
# execute if score @s purple_timer matches 10..15 unless entity @e[distance=..24, type=!#not_mob] run scoreboard players set @s purple_timer 10
execute if score @s purple_timer matches 10..15 if entity @e[type=!#minecraft:not_mob, sort=nearest, limit=1, distance=10..30, tag=!purple.mobs] run scoreboard players set @s purple_timer 16
execute if score @s purple_timer matches 10..15 unless entity @e[type=!#minecraft:not_mob, sort=nearest, limit=1, distance=10..30, tag=!purple.mobs] run scoreboard players set @s purple_timer 0


execute if score @s purple_timer matches 20..60 at @s run particle wax_on ~ ~ ~ 1 1 1 0.2 2 normal

execute if score @s[tag=!purple.got_silence] purple_timer matches 60 at @s run playsound entity.phantom.bite hostile @a ~ ~ ~ 1 1.5
execute if score @s purple_timer matches 20..61 at @s run tp @s ^ ^ ^ facing entity @e[type=!#minecraft:not_mob, sort=nearest, limit=1, distance=10..30, tag=!purple.mobs] eyes
execute if score @s purple_timer matches 60 at @s run summon arrow ~ ~-1.5 ~ {Glowing:true, NoGravity:1b,pickup:2b,life:100,damage:6d,crit:1b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2819166,custom_effects:[{id:"minecraft:glowing",amplifier:0,duration:3600,show_particles:1b}]}}},Tags:["purple.harpy_arrow","purple.harpy_arrow_1"],SoundEvent:"item.trident.hit"}
execute if score @s purple_timer matches 60 at @s run summon arrow ~ ~-1.5 ~ {Glowing:true,NoGravity:1b,pickup:2b,life:100,damage:6d,crit:1b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2819166,custom_effects:[{id:"minecraft:glowing",amplifier:0,duration:3600,show_particles:1b}]}}},Tags:["purple.harpy_arrow","purple.harpy_arrow_2"],SoundEvent:"item.trident.hit"} 
execute if score @s purple_timer matches 60 at @s run summon arrow ~ ~-1.5 ~ {Glowing:true,NoGravity:1b,pickup:2b,life:100,damage:6d,crit:1b,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2819166,custom_effects:[{id:"minecraft:glowing",amplifier:0,duration:3600,show_particles:1b}]}}},Tags:["purple.harpy_arrow","purple.harpy_arrow_3"],SoundEvent:"item.trident.hit"} 

# effect clear @s[nbt={active_effects:[{"id":"minecraft:glowing"}]}] glowing

execute if score @s purple_timer matches 400.. run scoreboard players set @s purple_timer 0

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:2,SpawnRange:12,MaxNearbyEntities:4,RequiredPlayerRange:30,Delay:0,MinSpawnDelay:1800,MaxSpawnDelay:2200,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:phantom",Health:18f,size:0,Tags:["purple.mobs","purple.harpy"],CustomName:{"bold":true,"color":"#A593ED","italic":false,"shadow_color":-14217651,"translate":"哈比","underlined":true},attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:max_health",base:18},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:scale",base:1.8}]}},weight:1}]}] 1