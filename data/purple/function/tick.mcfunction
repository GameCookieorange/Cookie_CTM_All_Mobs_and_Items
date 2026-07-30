execute as @e[tag=purple.deepdark_wizard, type=evoker] at @s run function purple:mob/deepdark_wizard/wizard
execute as @e[type=vex, tag=!purple.change_to_hallway_ghost, tag=!purple.hallway_ghost] at @s run execute if entity @e[tag=purple.deepdark_wizard, type=evoker, distance=..10] run function purple:mob/deepdark_wizard/skill_1/vex_check
execute as @e[type=evoker_fangs, tag=!purple.change_to_glowing, tag=!purple.glowing_explosion] at @s run execute if entity @e[tag=purple.deepdark_wizard, type=evoker, distance=..40] run function purple:mob/deepdark_wizard/skill_2/fang_check
execute as @e[tag=purple.glowing_explosion, type=armor_stand] at @s run function purple:mob/deepdark_wizard/skill_2/armor
execute as @e[tag=purple.wizard_select, type=!#minecraft:not_mob, tag=!purple.mobs] at @s run function purple:mob/deepdark_wizard/skill_3/bullet/aimed
execute as @e[tag=purple.skull, type=armor_stand] at @s run function purple:mob/deepdark_wizard/skill_3/bullet/bullet
execute as @e[tag=purple.rot_marker] at @s run function purple:mob/deepdark_wizard/skill_3/bullet/marker


execute as @e[tag=purple.bright] at @s run function purple:mob/bright/bright

execute as @e[tag=purple.dark] at @s run function purple:mob/dark/dark

execute as @e[tag=purple.silence] at @s run function purple:mob/silence/silence

execute as @e[tag=purple.hallway_ghost] at @s run function purple:mob/hallway_ghost/ghost

execute as @e[tag=purple.invisible_man] at @s run function purple:mob/invisible_man/man

execute as @e[tag=purple.harpy, type=phantom] at @s run function purple:mob/harpy/harpy
execute as @e[tag=purple.harpy_arrow, type=arrow] at @s run function purple:mob/harpy/arrow

execute as @e[tag=purple.wall_crossing, type=husk] at @s run function purple:mob/wall_crossing/wall_crossing

execute as @e[tag=purple.mute_creeper, type=creeper] at @s run function purple:mob/mute_creeper/creeper
execute as @e[tag=purple.silence_marker, type=marker] at @s run function purple:mob/mute_creeper/trail
execute as @e[tag=purple.got_silence, type=!#minecraft:not_mob] at @s run function purple:mob/mute_creeper/silence
execute as @e[type=area_effect_cloud, nbt={potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:110b}]}}] at @s run function purple:mob/mute_creeper/cloud

execute as @e[tag=purple.phantom_sniper, type=stray] at @s run function purple:mob/phantom_sniper/phantom_sniper_ini
execute as @e[tag=purple.sniper_arrow, type=arrow] at @s run function purple:mob/phantom_sniper/arrow

execute as @e[tag=purple.photosensitive] at @s run function purple:mob/photosensitive/photosensitive_ini