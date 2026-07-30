scoreboard players add @s brown_timer 1

execute if score @s brown_timer matches 0..1 run data modify entity @s Rotation set from entity @e[tag=brown.saboteur, type=piglin_brute, sort=nearest, limit=1] Rotation

execute if score @s brown_timer matches 0..1 store result entity @s data.x double 1 run data get entity @e[tag=brown.saboteur, limit=1, sort=nearest, type=piglin_brute] data.x
execute if score @s brown_timer matches 0..1 store result entity @s data.y double 1 run data get entity @e[tag=brown.saboteur, limit=1, sort=nearest, type=piglin_brute] data.y
execute if score @s brown_timer matches 0..1 store result entity @s data.z double 1 run data get entity @e[tag=brown.saboteur, limit=1, sort=nearest, type=piglin_brute] data.z

execute if score @s brown_timer matches 2.. run function brown:saboteur/hint_marker_tp with entity @s data

execute unless block ~ ~ ~ #minecraft:passable run kill @s

execute if score @s brown_timer matches 20.. run kill @s

particle electric_spark ~ ~ ~ 0.5 0.5 0.5 0.2 20 normal