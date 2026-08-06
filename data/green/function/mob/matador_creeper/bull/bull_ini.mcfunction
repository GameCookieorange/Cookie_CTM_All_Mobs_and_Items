scoreboard players add @s green_timer 1

execute if score @s green_timer matches 31 run scoreboard players set @s green_debug 0
execute if score @s green_timer matches 31 run scoreboard players set @s green_attack 0 

execute if score @s green_timer matches 20..22 if entity @e[type=!ravager, team=!green_party_creeper, type=!creeper, distance=..24, type=!#minecraft:not_mob] at @s run scoreboard players set @s green_timer 25
execute if score @s green_timer matches 20..22 unless entity @e[type=!ravager, team=!green_party_creeper, type=!creeper, distance=..24, type=!#minecraft:not_mob] at @s run scoreboard players set @s green_timer 0

execute if score @s green_timer matches 30 run tag @s add green.attack_bull

execute if score @s green_timer matches 300.. run scoreboard players set @s green_timer 0

execute if entity @e[distance=..40, limit=1, type=creeper, tag=green.matador_creeper] run effect give @s minecraft:slowness 1 1 true
execute unless entity @e[distance=..40, limit=1, type=creeper, tag=green.matador_creeper] run effect give @s minecraft:strength 1 0 true
execute unless entity @e[distance=..40, limit=1, type=creeper, tag=green.matador_creeper] at @s run particle angry_villager ~ ~ ~ 1 1 1 0.8 5
