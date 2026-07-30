execute at @s run particle cloud ~ ~0.5 ~ 0.1 2 0.1 0.1 50 normal
execute at @s run particle campfire_signal_smoke ~ ~-1 ~ 0.1 0.8 0.1 0.3 10 normal

execute at @s run playsound block.fire.extinguish hostile @a[distance=..20] ~ ~ ~ 0.7 0.3

effect give @s levitation 1 10 true

scoreboard players set @s brown_timer 100