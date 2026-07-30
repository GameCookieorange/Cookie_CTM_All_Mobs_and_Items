scoreboard players add @s yellow_timer 1

execute if score @s yellow_timer matches 1 at @s run spreadplayers ~ ~ 4 8 false @s
execute if score @s yellow_timer matches 20 at @s run effect give @s glowing 5 0 true
execute if score @s yellow_timer matches 20 at @s run effect give @s slowness 10 2 false


execute if score @s yellow_timer matches 1000 run tp @s ~ ~-1000 ~
execute if score @s yellow_timer matches 1000 run effect give @s resistance 3 5 true
execute if score @s yellow_timer matches 995 at @s run particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 1 20 normal
execute if score @s yellow_timer matches 1000.. run damage @s 1000 minecraft:mob_attack by @s

execute at @s run particle ash ~ ~ ~ 1 1 1 0.05 2 force