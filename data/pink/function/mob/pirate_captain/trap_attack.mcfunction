execute as @e[team=!pink_pirate_team, type=!#minecraft:not_mob, distance=..2, sort=nearest] run damage @s 3 indirect_magic by @e[type=evoker, tag=pink.pirate_captain, limit=1, sort=nearest] from @e[type=evoker, tag=pink.pirate_captain, limit=1, sort=nearest]

execute as @e[team=!pink_pirate_team, type=!#minecraft:not_mob, distance=..2, sort=nearest] run effect give @s slowness 1 3 true

playsound entity.evoker_fangs.attack hostile @a ~ ~ ~ 0.8 1.5

kill @s


