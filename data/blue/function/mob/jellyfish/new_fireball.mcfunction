execute at @s run particle squid_ink ~ ~ ~ 0.3 0.3 0.3 0.15 6 normal

execute at @s if predicate blue:is_in_water run particle bubble_column_up ~ ~ ~ 0.4 0.3 0.4 0 20 normal

scoreboard players add @s blue_debug 1

execute if score @s blue_debug matches 20 run data modify entity @s Glowing set value true


execute if score @s blue_debug matches 600.. run kill @s
