scoreboard players add @s light_gray_timer 1

execute if score @s light_gray_timer matches 1 run data modify entity @s Owner set from entity @e[tag=light_gray.plasma, limit=1, distance=..3, sort=nearest] UUID

execute if score @s light_gray_timer matches 1 facing entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..20, sort=nearest, limit=1] eyes run tp @s ^ ^ ^ ~ ~

execute if score @s light_gray_timer matches 1 at @s run function light_gray:mob/plasma/calculate_motion

execute if entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..1, sort=nearest, limit=1] run function light_gray:mob/plasma/damage

particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.1 15 normal

execute if score @s light_gray_timer matches 100.. run kill @s