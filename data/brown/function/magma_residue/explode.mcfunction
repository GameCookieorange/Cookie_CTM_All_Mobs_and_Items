execute as @e[type=!#minecraft:not_mob, tag=!brown.steampunk, distance=..6, tag=!brown.magma_residue] at @s run damage @s 8 player_explosion by @e[type=magma_cube, sort=nearest, distance=..6, tag=brown.magma_residue, limit=1]

execute as @e[type=!#minecraft:not_mob, tag=!brown.steampunk, distance=..6, tag=!brown.magma_residue] at @s run effect give @s wither 12 0 true 

particle explosion ~ ~ ~ 2 2 2 0.4 15 normal

playsound entity.generic.explode hostile @a ~ ~ ~ 0.6 0.2 0.4

kill @s