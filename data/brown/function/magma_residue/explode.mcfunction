execute as @e[type=!#minecraft:not_mob, tag=!brown.steampunk, distance=..6] at @s run damage @s 10 explosion by @e[type=magma_cube, sort=nearest, distance=..6, tag=brown.magma_residue, limit=1]

particle explosion ~ ~ ~ 2 2 2 0.4 15 normal

playsound entity.generic.explode hostile @a ~ ~ ~ 0.6 0.2 0.4

kill @s