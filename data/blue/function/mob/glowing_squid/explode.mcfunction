execute if entity @e[distance=..5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] at @s run summon marker ~ ~ ~ {Tags:[blue.marked_player]}

execute if entity @e[distance=..5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] run execute as @e[tag=blue.squid_torpedo, distance=..46, type=squid] run function blue:mob/glowing_squid/remove

effect give @a[distance=..5] blindness 2 1 true
execute as @e[distance=..6, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] run damage @s 8 explosion by @e[sort=nearest, limit=1, tag=blue.wandering_missile, type=glow_squid] from @e[sort=nearest, limit=1, tag=blue.wandering_missile, type=glow_squid]

execute at @s run particle glow_squid_ink ~ ~ ~ 1.5 1.5 1.5 0.5 100 normal

kill @s

