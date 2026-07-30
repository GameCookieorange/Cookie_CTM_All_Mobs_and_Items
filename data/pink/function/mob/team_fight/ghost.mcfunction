scoreboard players add @s pink_battle_timer 1

execute if entity @e[team=pink_pirate_team, distance=..20] if score @s pink_battle_timer matches 20 at @s run particle sweep_attack ~ ~ ~ 2 2 2 0.1 5
execute if entity @e[team=pink_pirate_team, distance=..20, type=!parrot] if score @s pink_battle_timer matches 20 run execute as @e[team=pink_pirate_team, distance=..20, limit=3, sort=nearest] run damage @s 0 minecraft:mob_attack by @n[team=pink_ghost_team, sort=nearest, limit=1, type=!bee]

execute if score @s pink_battle_timer matches 400.. run scoreboard players set @s pink_battle_timer 0