execute run tag @e[distance=..60, type=!#minecraft:not_mob, tag=!purple.wall_crossing, tag=!purple.phantom_sniper, nbt={active_effects:[{id:"minecraft:glowing"}]}, limit=1, sort=nearest] add purple.sound_target

execute unless entity @e[tag=purple.sound_target] run tag @e[distance=..60, type=#minecraft:attack_entity, tag=!purple.wall_crossing, tag=!purple.phantom_sniper, limit=1, sort=nearest] add purple.sound_target

execute as @e[tag=purple.sound_target] at @s run playsound minecraft:entity.warden.death hostile @s ~ ~ ~ 2 2 1

tag @e[tag=purple.sound_target] remove purple.sound_target

summon arrow ^ ^1 ^0.5 {Tags:[purple.sniper_arrow],item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_color:2819166,custom_effects:[{id:"minecraft:glowing",amplifier:0,duration:3600,show_particles:1b},{id:"minecraft:darkness",amplifier:0,duration:800,show_particles:1b}]}}}, damage:5.5, NoGravity:true, pickup:2b, SoundEvent:"minecraft:block.anvil.land", crit:1b, Glowing:1b}