execute as @e[tag=cyan.dark_matter_creeper] at @s run function cyan:mob/creeper/dark_matter
execute as @e[tag=cyan.abyssal_dark_matter_creeper] at @s run function cyan:mob/elite_creeper/abyssal_dark_matter

execute as @e[tag=cyan.gray_alien, type=skeleton] at @s run function cyan:mob/gray_alien/alien_ini
execute as @e[tag=cyan.gray_alien_marker, type=marker] at @s run function cyan:mob/gray_alien/glass_explosion

execute as @e[tag=cyan.red_alien, type=piglin] at @s run function cyan:mob/red_alien/alien_ini

execute as @e[type=wither_skeleton, tag=cyan.dark_matter] at @s run function cyan:mob/dark_matter/dark_matter_ini
execute as @e[type=marker, tag=cyan.dark_matter_marker] at @s run function cyan:mob/dark_matter/dark_matter_marker
#skill three
execute as @e[type=guardian, tag=cyan.eye] at @s run function cyan:mob/dark_matter/skill/skill_3
#skill two
execute as @e[type=armor_stand, tag=cyan.dark_sword] at @s run function cyan:mob/dark_matter/skill/skill_2
#skill one
execute as @e[type=wither_skeleton, tag=cyan.dark_matter_skill_1] at @s run function cyan:mob/dark_matter/skill/skill_1
execute as @e[type=marker, tag=cyan.dark_sweep_attack] at @s run function cyan:mob/dark_matter/skill/sweep

execute as @e[type=cave_spider, tag=cyan.space_twister] at @s run function cyan:mob/space_twister/twister_ini
execute as @e[tag=cyan.pick_by_space_twister, limit=1] at @s run function cyan:mob/space_twister/pick_by_space_twister
execute as @e[tag=cyan.space_twister_marker, limit=1, type=marker] at @s run function cyan:mob/space_twister/marker

execute as @e[type=zombie, tag=cyan.transport_man] at @s run function cyan:mob/transport_man/transport_man
execute as @e[type=armor_stand, tag=cyan.transport_man_checkpoint] at @s run function cyan:mob/transport_man/armor_stand

execute as @e[type=zombie, tag=cyan.void] at @s run function cyan:mob/void/void
execute as @e[type=zombie, tag=cyan.void_become_green] at @s run function cyan:mob/void/green
execute as @e[type=zombie, tag=cyan.void_become_purple] at @s run function cyan:mob/void/purple

execute as @e[type=skeleton, tag=cyan.death_astrouant] at @s run function cyan:mob/death_astronaut/astronaut_ini

execute as @e[type=endermite, tag=cyan.hyperbaric] at @s run function cyan:mob/hyperbaric/hyperbaric

execute as @a[tag=cyan.start_breath] run function cyan:player_in_space/start
execute as @a[tag=cyan.start_breath, scores={cyan_player_air_timer=-100..}] run function cyan:player_in_space/air
execute as @a[tag=!cyan.start_breath, scores={cyan_player_air_timer=-100..}] run function cyan:player_in_space/end
execute as @a[scores={cyan_death_reset=1..}] at @s run tag @s add cyan.waiting_respawn

execute as @a[tag=cyan.attack_by_astronaut] at @s run function cyan:mob/death_astronaut/lost_air

execute as @e[tag=cyan.hyperbaric_marker] at @s run function cyan:mob/hyperbaric/hyperbaric
execute as @e[tag=cyan.hyperbaric] at @s run function cyan:mob/hyperbaric/dissappear

execute as @e[tag=cyan.air, type=marker] at @s run function cyan:player_in_space/air/air_supply

execute as @e[tag=cyan.green_bullet, type=shulker_bullet] at @s run function cyan:mob/green_alien/the_bullet
execute as @e[tag=cyan.green_alien, type=zombie] at @s run function cyan:mob/green_alien/alien_bullet
