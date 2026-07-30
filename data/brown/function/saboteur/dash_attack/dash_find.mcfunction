execute as @e[tag=brown.saboteur_dash_marker,limit=1, sort=nearest, type=marker] run data modify entity @s Pos set from entity @s Pos

execute as @e[tag=brown.saboteur_dash_marker,limit=1, sort=nearest, type=marker] store result score @s brown_pos.x run data get entity @s Pos[0] 1000
execute as @e[tag=brown.saboteur_dash_marker,limit=1, sort=nearest, type=marker] store result score @s brown_pos.y run data get entity @s Pos[1] 1000
execute as @e[tag=brown.saboteur_dash_marker,limit=1, sort=nearest, type=marker] store result score @s brown_pos.z run data get entity @s Pos[2] 1000

execute store result entity @s data.x double 0.001 run scoreboard players get @e[tag=brown.saboteur_dash_marker,limit=1, sort=nearest, type=marker] brown_pos.x
execute store result entity @s data.y double 0.001 run scoreboard players get @e[tag=brown.saboteur_dash_marker,limit=1, sort=nearest, type=marker] brown_pos.y
execute store result entity @s data.z double 0.001 run scoreboard players get @e[tag=brown.saboteur_dash_marker,limit=1, sort=nearest, type=marker] brown_pos.z
