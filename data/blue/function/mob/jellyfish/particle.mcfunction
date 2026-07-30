particle electric_spark ~0 ~-5 ~-5 2.5 0 0 0 25 force
particle electric_spark ~0 ~-5 ~5 2.5 0 0 0 25 force
particle electric_spark ~-5 ~-5 ~0 0 0 2.5 0 25 force
particle electric_spark ~5 ~-5 ~0 0 0 2.5 0 25 force

particle electric_spark ~0 ~5 ~-5 2.5 0 0 0 25 force
particle electric_spark ~0 ~5 ~5 2.5 0 0 0 25 force
particle electric_spark ~-5 ~5 ~0 0 0 2.5 0 25 force
particle electric_spark ~5 ~5 ~0 0 0 2.5 0 25 force

particle electric_spark ~-5 ~0 ~-5 0 2.5 0 0 25 force
particle electric_spark ~5 ~0 ~-5 0 2.5 0 0 25 force
particle electric_spark ~-5 ~0 ~5 0 2.5 0 0 25 force
particle electric_spark ~5 ~0 ~5 0 2.5 0 0 25 force

playsound entity.creeper.primed hostile @a ~ ~ ~ 3 1.2

execute as @e[type=#minecraft:throwable_or_projectile, distance=..8] at @s run execute as @s[type=!fireball] run function blue:mob/jellyfish/calculate_motion
execute as @e[type=#minecraft:throwable_or_projectile, distance=..8] at @s run execute as @s[type=!fireball] run particle electric_spark ~ ~ ~ 0.2 0.2 0.2 0 20 normal

execute as @e[tag=!blue.ocean_army, type=!#minecraft:not_mob, distance=..8, team=!blue_ocean_army] at @s run damage @s 10 mob_attack_no_aggro by @e[tag=blue.matrix_jellyfish, distance=..6, limit=1, sort=nearest] from @e[tag=blue.matrix_jellyfish, distance=..6, limit=1, sort=nearest]

scoreboard players set @s blue_timer 6

# give @a apple