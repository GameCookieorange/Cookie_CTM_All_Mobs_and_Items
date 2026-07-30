scoreboard players add @s light_gray_timer 1

execute if score @s light_gray_timer matches 1 facing entity @e[team=!light_gray_machine_team, type=!#not_mob, distance=..20, sort=random, predicate=light_gray:in_water] eyes run tp @s ^ ^ ^ ~ ~

tp @s ^ ^ ^0.8

particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.01 20 normal

# execute if entity @e[team=!light_gray_machine_team, type=!#not_mob, distance=..1, predicate=light_gray:in_water] run kill @s

execute if score @s light_gray_timer matches 20.. run kill @s