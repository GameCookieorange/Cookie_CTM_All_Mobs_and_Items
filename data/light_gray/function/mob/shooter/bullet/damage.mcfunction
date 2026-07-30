execute if entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..2.5, sort=nearest, limit=1] run execute as @e[type=!#not_mob, team=!light_gray_machine_team, sort=nearest, limit=1] at @s run damage @s 2.5 mob_attack by @n[type=skeleton, tag=light_gray.shooter, limit=1, sort=nearest] from @n[type=skeleton, tag=light_gray.shooter, limit=1, sort=nearest]

playsound block.chain.break hostile @a ~ ~ ~ 1.2 2

kill @s