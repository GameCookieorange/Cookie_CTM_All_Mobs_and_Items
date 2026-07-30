scoreboard players add @s yellow_debug 1

execute if score @s yellow_debug matches 1 at @s run particle sonic_boom ~ ~ ~ 0 0 0 0.01 1 normal

execute if score @s yellow_debug matches 1 at @s run playsound block.anvil.land hostile @a ~ ~ ~ 0.8 2

execute if score @s yellow_debug matches 1 at @s run tp @s ^ ^ ^ facing entity @e[type=#minecraft:attack_entity, limit=1, sort=nearest, distance=..40] eyes
# execute if score @s yellow_debug matches 1 at @s run give @a cookie

execute if score @s yellow_debug matches 1 run function yellow:mob/mirror/reflection


execute if score @s yellow_debug matches 2400.. run kill @s

execute at @s run particle firework ~ ~ ~ 0.3 0.3 0.3 0.01 1 normal