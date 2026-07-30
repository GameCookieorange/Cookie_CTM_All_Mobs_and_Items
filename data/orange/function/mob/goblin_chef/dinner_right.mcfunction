scoreboard players add @s orange_timer 1

execute if score @s orange_timer matches 1 at @s run tp @s ^ ^ ^ facing entity @e[ distance=..20, sort=nearest, team=orange_goblin, limit=1, tag=!orange.goblin_chef] eyes

execute if score @s orange_timer matches 2 run function orange:mob/goblin_chef/calculate_motion_right

