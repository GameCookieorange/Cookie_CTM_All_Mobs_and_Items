execute at @s run particle enchant ~ ~ ~ 3 3 3 0.2 10 force
execute at @s run particle explosion ~ ~ ~ 3 3 3 0.2 20 force

scoreboard players reset @s brown_debug
scoreboard players reset @s brown_timer

tp @s ~ ~-5000 ~

kill @s
