scoreboard players add @s pink_debug 1

execute if score @s pink_debug matches 1 at @s rotated as @e[type=vindicator, limit=1, sort=nearest, tag=pink.pirate_gunner] run tp @s ~ ~ ~ ~ ~

execute if score @s pink_debug matches 1.. run tp @s ^ ^ ^0.7

execute if score @s pink_debug matches 1 at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.4 20 normal
execute if score @s pink_debug matches 1 at @s run particle gust_emitter_small ~ ~ ~ 0.0 0.0 0.0 0.1 1 normal

execute if score @s pink_debug matches 2.. at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0 5 normal
execute if score @s pink_debug matches 2.. at @s run particle smoke ~ ~ ~ 0.2 0.2 0.2 0 30 normal

execute if score @s pink_debug matches 2.. if entity @e[team=!pink_pirate_team, type=!#minecraft:not_mob, distance=..2, sort=nearest] run function pink:mob/pirate_gunner/explode

execute unless block ~ ~ ~ #orange:passable run function pink:mob/pirate_gunner/explode

execute if score @s pink_debug matches 50.. run function pink:mob/pirate_gunner/explode