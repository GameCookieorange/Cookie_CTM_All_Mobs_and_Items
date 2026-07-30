scoreboard players add @s magenta_timer 1

execute if score @s magenta_timer matches 1 run effect clear @s invisibility

effect give @s speed 1 3 true 

execute if score @s magenta_timer matches 60.. run tag @s remove magenta.is_showing_desert_shadow

execute if score @s magenta_timer matches 60.. run scoreboard players set @s magenta_timer 0