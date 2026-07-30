scoreboard players add @s pink_debug 1

execute if score @s pink_debug matches 1 run spreadplayers ~ ~ 1 6 false @s

execute if score @s pink_debug matches 1.. at @s run particle end_rod ~1.5 ~ ~ 0.05 0.1 0.05 0 1 normal @a
execute if score @s pink_debug matches 10.. at @s run particle end_rod ~1.2 ~ ~1.2 0.05 0.1 0.05 0 1 normal @a
execute if score @s pink_debug matches 20.. at @s run particle end_rod ~ ~ ~1.5 0.05 0.1 0.05 0 1 normal @a
execute if score @s pink_debug matches 30.. at @s run particle end_rod ~-1.2 ~ ~1.2 0.05 0.1 0.05 0 1 normal @a
execute if score @s pink_debug matches 40.. at @s run particle end_rod ~-1.5 ~ ~ 0.05 0.1 0.05 0 1 normal @a
execute if score @s pink_debug matches 50.. at @s run particle end_rod ~-1.2 ~ ~-1.2 0.05 0.1 0.05 0 1 normal @a
execute if score @s pink_debug matches 60.. at @s run particle end_rod ~ ~ ~-1.5 0.05 0.1 0.05 0 1 normal @a
execute if score @s pink_debug matches 70.. at @s run particle end_rod ~1.2 ~ ~-1.2 0.05 0.1 0.05 0 1 normal @a

execute if score @s pink_debug matches 80.. at @s run particle end_rod ~ ~ ~ 0.5 0.5 0.5 1 100 normal @a

execute if score @s pink_debug matches 40 run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ 0.4 0.6
execute if score @s pink_debug matches 80 run playsound entity.lightning_bolt.impact ambient @a ~ ~ ~ 0.8 0.4
execute if score @s pink_debug matches 80 run playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~ 2 1.5
execute if score @s pink_debug matches 80 as @e[team=!pink_ghost_team, type=!#not_mob, distance=..4] run damage @s 6.5 lightning_bolt by @e[type=drowned, tag=pink.drowned_captain, limit=1, sort=nearest]
execute if score @s pink_debug matches 81 run kill @s

execute if score @s pink_debug matches 2..40 run particle dust{color:[0.137,0.490,0.220],scale:4} ~ ~ ~ 0 4 0 0 1 normal @a
execute if score @s pink_debug matches 41..80 run particle dust{color:[0.698,1.000,0.302],scale:4} ~ ~ ~ 0 4 0 0 1 normal @a