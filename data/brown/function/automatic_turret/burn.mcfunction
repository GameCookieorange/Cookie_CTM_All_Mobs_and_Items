
execute as @e[tag=!brown.steampunk, distance=..6] at @s run damage @s 12 on_fire by @e[type=husk, limit=1, tag=brown.turret_core] from @e[type=husk, limit=1, tag=brown.turret_core]

execute at @s run function brown:steam_machine/summon_marker

execute as @e[tag=!brown.steampunk, distance=..6] at @s run fill ~ ~ ~ ~ ~ ~ fire replace air

playsound item.firecharge.use hostile @s ~ ~ ~ 0.6 0.5
