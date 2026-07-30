scoreboard players add @s green_timer 1

execute if score @s green_timer matches 31 run scoreboard players set @s green_debug 0
execute if score @s green_timer matches 31 run scoreboard players set @s green_attack 0 

execute if score @s green_timer matches 20..22 if entity @e[type=!ravager, team=!green.party_creeper, type=!creeper, distance=..24, type=!#minecraft:not_mob] at @s run scoreboard players set @s green_timer 25
execute if score @s green_timer matches 20..22 unless entity @e[type=!ravager, team=!green.party_creeper, type=!creeper, distance=..24, type=!#minecraft:not_mob] at @s run scoreboard players set @s green_timer 0

# execute if score @s green_timer matches 60 run function green:mob/matador_creeper/bull/sprint
# execute if score @s green_timer matches 25..30 run give @a cookie
execute if score @s green_timer matches 30 run tag @s add green.attack_bull

execute if score @s green_timer matches 240.. run scoreboard players set @s green_timer 0
