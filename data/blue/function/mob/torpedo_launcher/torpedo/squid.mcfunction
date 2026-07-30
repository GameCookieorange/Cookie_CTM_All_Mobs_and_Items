scoreboard players add @s blue_debug 1

execute if score @s blue_debug matches 1..2 run tp @s ^ ^ ^0.1 facing entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, limit=1, sort=nearest] eyes

execute if score @s blue_debug matches 2.. rotated as @s run tp @s ^ ^ ^0.22

execute if score @s blue_debug matches 160.. run function blue:mob/torpedo_launcher/torpedo/explode
execute if entity @e[distance=..3, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] run function blue:mob/torpedo_launcher/torpedo/explode
execute as @s[nbt={HurtTime:9s}] run function blue:mob/torpedo_launcher/torpedo/explode