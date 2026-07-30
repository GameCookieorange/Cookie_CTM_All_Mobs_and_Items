execute as @a[predicate=thecookieorange:3d_steady_talisman/holding_3d_steady_talisman] at @s run function thecookieorange:item/3d_steady_talisman/3d_steady_talisman_ini

# execute as @a[predicate=thecookieorange:cloud_collector/holding_cloud_collector] at @s run function thecookieorange:item/cloud_collector/cloud_collector_ini

execute as @a[predicate=thecookieorange:harvest/holding_harvest] at @s run function thecookieorange:item/harvest/harvest_ini
execute as @a[predicate=thecookieorange:harvest/harvest_broken] at @s run function thecookieorange:item/harvest/give_golden_apple

execute as @a[predicate=thecookieorange:coward_critic/wearing_coward_critic] at @s run function thecookieorange:item/coward_critic/coward_critic_ini

execute as @a[predicate=thecookieorange:sky_protector/wearing_sky_protector] at @s run function thecookieorange:item/sky_protector/sky_protector_ini

execute as @a[predicate=thecookieorange:bury_the_light/holding_bury_the_light, scores={orange_bury_the_light_cd=0..}] at @s run function thecookieorange:item/bury_the_light/bury_the_light_ini
execute as @a[scores={orange_bury_the_light_timer=1..}] run scoreboard players set @s orange_bury_the_light_timer 0
execute as @a[scores={orange_bury_the_light_cd=..-1}] run function thecookieorange:item/bury_the_light/bury_the_light_cd
execute as @a[scores={orange_bury_the_light_attack=1..}] at @s run function thecookieorange:item/bury_the_light/bury_the_light_attack


execute as @a[tag=orange_sky_claymore_charging, scores={orange_sky_claymore_cd=0..}] run function thecookieorange:item/sky_claymore/sky_claymore_ready_to_attack
execute as @a[tag=orange_sky_claymore_charging, scores={orange_sky_claymore_attack=0..99}] unless predicate thecookieorange:sky_claymore/is_using_sky_claymore run function thecookieorange:item/sky_claymore/sky_claymore_weak_attack
execute as @a[tag=orange_sky_claymore_charging, scores={orange_sky_claymore_attack=100..}] unless predicate thecookieorange:sky_claymore/is_using_sky_claymore run function thecookieorange:item/sky_claymore/sky_claymore_heavy_attack
execute as @a[scores={orange_sky_claymore_cd=..-1}] run function thecookieorange:item/sky_claymore/sky_claymore_cd
execute as @e[tag=sky_wave] run function thecookieorange:item/sky_claymore/sky_claymore_wave

execute as @a[predicate=thecookieorange:sky_helmet/wear_sky_helmet, predicate=thecookieorange:sky_helmet/see_sky] run function thecookieorange:item/sky_helmet/sky_helmet

execute as @a[predicate=thecookieorange:panic_button/holding_panic_button, tag=orange_using_panic_button] at @s run function thecookieorange:item/panic_button/panic_button_skill
execute as @a[scores={orange_panic_button_cd=..-1}] at @s run function thecookieorange:item/panic_button/panic_button_cd
execute as @a[scores={orange_panic_button_cd=0..}] if predicate thecookieorange:panic_button/about_to_use_panic_button run function thecookieorange:item/panic_button/about_to_use_panic_button
execute as @a[scores={about_to_use_panic_button=1..}] unless predicate thecookieorange:panic_button/about_to_use_panic_button run function thecookieorange:item/panic_button/no_want_to_use_panic_button

execute as @a[predicate=thecookieorange:purple_cheer_baton/holding_purple_cheer_baton_left] run function thecookieorange:item/purple_cheer_baton/is_fan
execute as @a[tag=is_fan] run function thecookieorange:item/purple_cheer_baton/purple_cheer_baton_left
execute as @a[predicate=thecookieorange:purple_cheer_baton/holding_purple_cheer_baton_right] run function thecookieorange:item/purple_cheer_baton/purple_cheer_baton_right
execute as @a[scores={orange_purple_cheer_baton=1..15}] unless predicate thecookieorange:purple_cheer_baton/holding_purple_cheer_baton_left run scoreboard players set @s orange_purple_cheer_baton 0

execute as @a[predicate=thecookieorange:tiny_sky_core/holding_tiny_sky_core] at @s run function thecookieorange:item/tiny_sky_core/tiny_sky_core_ini

execute as @e[type=lingering_potion,tag=!orange_creeper_potion_processed,nbt={Item:{components:{"minecraft:custom_data":{orange_cyclone_potion:1b}}}}] at @s run function thecookieorange:item/creeper_potion/creeper_potion_ini


execute as @e[tag=potion_tracker, type=creeper] at @s run function thecookieorange:item/creeper_potion/potion_tracker_ini
execute as @e[tag=potion_tracker, type=creeper] at @s run function thecookieorange:item/creeper_potion/creeper_ini


execute as @e[type=lingering_potion,tag=!processed_cloud_potion,nbt={Item:{components:{"minecraft:custom_data":{orange_cloud_potion:1b}}}}] at @s run function thecookieorange:item/cloud_block/cloud_block_ini


execute as @e[tag=orange_bounce_pad] at @s run function thecookieorange:item/cloud_block/bounce_pad

execute as @e[tag=cloud_potion_tracker, type=marker] at @s run function thecookieorange:item/cloud_block/processed_cloud_potion


# execute as @a[tag=in_orange_bgm_area] run function thecookieorange:music/the_orange_music