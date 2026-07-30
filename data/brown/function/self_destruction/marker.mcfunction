particle cloud ~ ~ ~ 2 2 2 0 20
particle campfire_signal_smoke ~ ~ ~ 3 3 3 0 10

scoreboard players add @s brown_debug 1

execute if score @s brown_debug matches 1 at @s run playsound block.lava.extinguish hostile @a ~ ~ ~ 1 1.5 1

execute if score @s brown_debug matches 160.. run kill @s