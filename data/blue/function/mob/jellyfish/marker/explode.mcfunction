execute as @e[type=ghast, tag=blue.matrix_jellyfish, distance=..8, sort=nearest, limit=1] at @s run particle end_rod ~ ~ ~ 1 1 1 0.4 100 force

execute as @e[type=ghast, tag=blue.matrix_jellyfish, distance=..8, sort=nearest, limit=1] at @s run playsound entity.creeper.primed hostile @a ~ ~ ~ 3 1.8

execute as @e[type=ghast, tag=blue.matrix_jellyfish, distance=..8, sort=nearest, limit=1] run kill @s

execute as @e[type=fireball, tag=blue.ghast_fireball_new, distance=..8, sort=nearest, limit=1] run kill @s


