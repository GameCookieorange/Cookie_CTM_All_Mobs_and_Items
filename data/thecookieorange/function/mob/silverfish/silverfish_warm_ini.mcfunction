scoreboard players add @s orange_timer 1

particle minecraft:dust_color_transition{from_color:[1.000,0.506,0.220],to_color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0 0 0 2 10 normal

execute if score @s orange_timer matches 50 at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire[age=0]

execute if score @s orange_timer matches 50 run scoreboard players set @s orange_timer 0
