execute as @e[tag=light_blue.ice_generator, predicate=!light_blue:is_sitting] at @s run function light_blue:mob/ice_core/ice_generate_ini
execute as @e[tag=light_blue.ice_generator_marker, type=marker] at @s run function light_blue:mob/ice_core/ice_set
execute as @e[tag=light_blue.ice_generator_zombie, type=zombie] at @s run function light_blue:mob/ice_core/ice_generate_zombie

execute as @e[tag=light_blue.ice_crystal, type=bee] at @s run function light_blue:mob/ice_crystal/ice_crystal_ini

execute as @e[tag=light_blue.polar_bear, type=polar_bear] at @s run function light_blue:mob/polar_bear/bear

execute as @e[tag=light_blue.powder_snow_creeper, type=creeper] at @s run function light_blue:mob/powder_snow_creeper/creeper_ini
execute as @e[type=area_effect_cloud, nbt={potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:40b}]}}] at @s run function light_blue:mob/powder_snow_creeper/fill_snow

execute as @e[tag=light_blue.cracked_crystal, type=skeleton] at @s run function light_blue:mob/cracked_crystal/skeleton_ini
execute as @e[tag=light_blue.bullet, type=marker] at @s run function light_blue:mob/cracked_crystal/bullet/all_bullet

execute as @e[tag=light_blue.wolf, type=wolf] at @s run function light_blue:mob/ice_wolf/ice_wolf

execute as @a[scores={light_blue_ice_level=1..}] run function light_blue:mob/ice_skeleton/ice_level
execute as @a[scores={light_blue_player_deaths=1..}] run function light_blue:mob/ice_skeleton/reset