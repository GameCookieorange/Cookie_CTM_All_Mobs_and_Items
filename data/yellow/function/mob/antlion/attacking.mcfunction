execute as @e[type=!#minecraft:not_mob, tag=!yellow.antlion, distance=..2.5, sort=nearest] at @s run damage @s 4 mob_attack_no_aggro by @e[tag=yellow.antlion, limit=1, type=silverfish, sort=nearest]

kill @s
