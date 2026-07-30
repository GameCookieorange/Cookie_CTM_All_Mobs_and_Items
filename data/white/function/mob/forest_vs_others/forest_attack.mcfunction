scoreboard players add @s white_battle_timer 1

execute if entity @e[team=white_invade_creature, distance=..16] if score @s white_battle_timer matches 190 at @s run particle sweep_attack ~ ~ ~ 2 2 2 0.1 5
execute if entity @e[team=white_invade_creature, distance=..16] if score @s white_battle_timer matches 190 run execute as @e[team=white_invade_creature, distance=..16, limit=4] run damage @s 0 minecraft:mob_attack by @n[team=white_forest_creature, type=!phantom, type=!allay]

execute if score @s white_battle_timer matches 300.. run scoreboard players set @s white_battle_timer 0