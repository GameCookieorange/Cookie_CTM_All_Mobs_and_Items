scoreboard players add @s blue_debug 1
scoreboard players add @s blue_timer 1


execute if score @s blue_timer matches 9 at @s run particle glow_squid_ink ~ ~ ~ 0.2 0.2 0.2 0 2
execute if score @s blue_timer matches 9 at @s run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0 2

execute if score @s blue_debug matches 100.. run kill @s
execute if score @s blue_timer matches 10.. run scoreboard players set @s blue_timer 0

execute as @e[tag=blue.find_the_player, distance=..46, type=squid] at @s run execute unless entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..8.5, limit=1, sort=nearest] run tp @s ^ ^ ^0.12 facing entity @e[tag=blue.marked_player, type=marker, limit=1, distance=..50, sort=nearest]
