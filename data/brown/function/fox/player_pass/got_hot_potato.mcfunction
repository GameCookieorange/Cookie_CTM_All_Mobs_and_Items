
execute at @s run particle smoke ~ ~0.8 ~ 0.8 0.8 0.8 0.1 6 normal

scoreboard players add @s brown_hot_potato_timer 1

execute if score @s brown_hot_potato_timer matches 210.. run function brown:fox/player_pass/reset
