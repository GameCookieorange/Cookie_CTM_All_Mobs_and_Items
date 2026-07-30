execute if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..2] as @e[tag=!cyan.space_creature, type=!#not_mob, distance=..2] run damage @s 8 mob_attack by @e[type=wither_skeleton, limit=1, sort=nearest, tag=cyan.dark_matter]

particle sweep_attack ~ ~ ~ 0.0 0.0 0.0 0.5 4 normal

kill @s