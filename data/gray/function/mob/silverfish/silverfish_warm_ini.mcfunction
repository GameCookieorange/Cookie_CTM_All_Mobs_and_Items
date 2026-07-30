scoreboard players add @s gray_timer 1

particle minecraft:dust_color_transition{from_color:[1.000,0.506,0.220],to_color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 5 normal

execute if score @s gray_timer matches 30 at @s if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:fire[age=0]

execute if score @s gray_timer matches 30 run scoreboard players set @s gray_timer 0

effect give @s glowing 1