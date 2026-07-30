execute at @s run summon marker ~ ~ ~ {Tags:["cyan.space_twister_marker"]}

execute as @e[tag=cyan.space_creature, tag=!cyan.hyperbaric, limit=1, sort=random, distance=..50, tag=!cyan.space_twister, tag=!cyan.pick_by_space_twister] at @s run tag @s add cyan.pick_by_space_twister

tp @s @e[tag=cyan.pick_by_space_twister, limit=1, sort=arbitrary]