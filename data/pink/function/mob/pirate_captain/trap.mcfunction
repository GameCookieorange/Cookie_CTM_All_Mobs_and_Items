scoreboard players add @s pink_debug 1

execute if score @s pink_debug matches 0..41 run particle dust_color_transition{from_color:[1.000,0.780,0.859],to_color:[1.000,0.012,0.702],scale:0.8} ~ ~ ~ 0.0 2.5 0.0 0 5 normal

execute if score @s pink_debug matches 41.. run particle crit ~ ~0.5 ~ 0.6 0.0 0.6 0 8 normal

execute if score @s pink_debug matches 41.. if entity @e[team=!pink_pirate_team, type=!#minecraft:not_mob, distance=..2, sort=nearest] run function pink:mob/pirate_captain/trap_attack

execute if score @s pink_debug matches 80.. run kill @s