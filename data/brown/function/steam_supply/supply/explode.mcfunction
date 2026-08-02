scoreboard players reset @s brown_timer
scoreboard players reset @s brown_debug

execute at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1.2 0.5

execute at @s run particle explosion_emitter ~ ~ ~ 1.5 1.5 1.5 0.8 3 normal
execute as @e[distance=..8, type=!#minecraft:not_mob, tag=!brown.steam_supply_item] at @s run damage @s 11 player_explosion by @e[limit=1, type=!minecraft:chicken, distance=..10, tag=brown.steam_supply_item]
kill @s