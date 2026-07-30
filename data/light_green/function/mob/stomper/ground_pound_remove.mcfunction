particle explosion ~ ~ ~ 2 0 2 4 5

execute as @e[type=!slime, type=!#minecraft:not_mob, type=!magma_cube, distance=..5] run damage @s 4 minecraft:mob_attack_no_aggro by @n[tag=light_green.stomper_slime, sort=nearest, limit=1]

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 1

tag @s remove ground_attack
