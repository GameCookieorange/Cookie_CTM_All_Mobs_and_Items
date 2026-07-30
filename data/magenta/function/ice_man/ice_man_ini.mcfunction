scoreboard players add @s magenta_timer 1

execute if score @s magenta_timer matches 100 run data modify entity @s TicksFrozen set value 0

execute if score @s magenta_timer matches 200.. run scoreboard players set @s magenta_timer 0