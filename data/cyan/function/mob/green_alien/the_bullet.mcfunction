scoreboard players add @s cyan_timer 1

execute if score @s cyan_timer matches 1 run data merge entity @s {Steps:10}

execute if score @s cyan_timer matches 1 run data modify entity @s Owner set from entity @e[limit=1, distance=..5, sort=nearest, tag=cyan.green_alien] UUID

execute if score @s cyan_timer matches 1 run data modify entity @s Target set from entity @e[tag=!cyan.space_creature, type=!#minecraft:not_mob ,limit=1, distance=..20, sort=random] UUID

execute if score @s cyan_timer matches 400.. run kill @s