
execute at @s run particle cloud ~ ~ ~ 1.5 1.5 1.5 0.1 70 normal
execute at @s run playsound block.fire.extinguish hostile @a ~ ~ ~ 1 0.6

fill ~3 ~3 ~2 ~-3 ~-3 ~-2 air replace fire
fill ~2 ~3 ~3 ~-2 ~-3 ~-3 air replace fire

kill @s