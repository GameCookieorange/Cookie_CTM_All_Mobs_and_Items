execute as @e[type=!#minecraft:not_mob, team=!light_green_slime, distance=..9] at @s run effect give @s minecraft:oozing 12 0

execute at @s run particle item_slime ~ ~1 ~ 3 3 3 1 100 normal

kill @s