scoreboard players add @s pink_timer 1
scoreboard players add @s pink_debug 1

execute if score @s pink_timer matches 10 run execute as @e[team=!pink_pirate_team, type=!#minecraft:not_mob, distance=..2] at @s run damage @s 3 mob_attack by @e[tag=pink.pirate_captain_parrot, limit=1, sort=nearest, type=parrot]

execute if score @s pink_timer matches 20 run scoreboard players set @s pink_timer 0

execute unless predicate pink:is_sitting run kill @s

execute if score @s pink_debug matches 800..810 at @s run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0.8 0.8 0.8 1 5

execute if score @s pink_debug matches 810.. run tp @s ~ ~-1500 ~
execute if score @s pink_debug matches 811.. run kill @s