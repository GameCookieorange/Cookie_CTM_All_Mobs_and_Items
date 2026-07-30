execute at @s run particle cloud ~ ~0.5 ~ 1.5 0.2 1.5 0.05 100 normal
execute at @s run particle small_flame ~ ~ ~ 0.8 0.8 0.8 0.05 40 normal
playsound block.fire.extinguish hostile @a ~ ~ ~ 0.4 1 1
execute at @s run fill ~-8 ~-4 ~-8 ~8 ~4 ~8 air replace water