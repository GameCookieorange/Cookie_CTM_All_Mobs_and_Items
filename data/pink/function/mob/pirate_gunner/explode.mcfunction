execute as @e[team=!pink_pirate_team, type=!#minecraft:not_mob, distance=..3, sort=nearest] run damage @s 6 player_explosion by @e[type=vindicator, tag=pink.pirate_gunner, limit=1, sort=nearest] from @e[type=vindicator, tag=pink.pirate_gunner, limit=1, sort=nearest]

particle campfire_cosy_smoke ~ ~ ~ 0.0 0.0 0.0 0.4 50 normal

playsound entity.generic.explode hostile @a ~ ~ ~ 1.5 1.3

kill @s


