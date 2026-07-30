scoreboard players add @s cyan_debug 1


execute if score @s cyan_debug matches 1..80 at @s run particle portal ~ ~-0.5 ~ 0 0 0 0.01 1

execute if score @s cyan_debug matches 1..80 run tp @s ^ ^ ^0.12 facing entity @a[sort=nearest, limit=1] eyes

execute unless block ^ ^ ^1.5 air if score @s cyan_debug matches 40..80 run scoreboard players set @s cyan_debug 81
execute if entity @a[distance=..2] if score @s cyan_debug matches 60..80 run scoreboard players set @s cyan_debug 81

execute if score @s cyan_debug matches 81 run data modify entity @s Marker set value false
execute if score @s cyan_debug matches 85.. if block ~ ~0.2 ~ #minecraft:passable unless block ~ ~-1 ~ #minecraft:passable run tag @s add cyan.armor_stand_tp_place

execute if score @s cyan_debug matches 140.. run kill @s