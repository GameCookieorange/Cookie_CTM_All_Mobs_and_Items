
execute as @e[tag=!brown.steampunk, distance=..4] at @s run damage @s 8 in_fire by @e[type=husk, limit=1, tag=brown.turret_1] from @e[type=husk, limit=1, tag=brown.turret_1]

execute at @s run function brown:steam_machine/summon_marker

playsound item.firecharge.use hostile @s ~ ~ ~ 0.3 0.8
