# execute if entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..2, sort=nearest, limit=1] run execute as @e[type=!#not_mob, team=!light_gray_machine_team, sort=nearest, limit=1] at @s run damage @s 10 mob_attack by @n[type=shulker, tag=light_gray.plasma, limit=1, sort=nearest] from @n[type=shulker, tag=light_gray.plasma, limit=1, sort=nearest]

playsound entity.creeper.primed hostile @a ~ ~ ~ 1.2 2

# kill @s