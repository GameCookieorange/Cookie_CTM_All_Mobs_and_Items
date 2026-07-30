execute at @s run particle explosion ~ ~ ~ 0.75 0.5 0.75 1 15

execute as @e[type=!#not_mob, team=!light_gray_machine_team, distance=..3] at @s run playsound minecraft:item.mace.smash_ground hostile @s ~ ~ ~ 1 0.8

execute as @e[type=!#not_mob, team=!light_gray_machine_team, distance=..3] run damage @s 5 minecraft:mob_attack by @n[tag=light_gray.machine.destroyer] from @e[distance=..12, limit=1, sort=nearest, tag=light_gray.machine.elite_zombie]

kill @s