execute as @e[type=!#minecraft:not_mob, distance=..2.5,limit=1, sort=nearest] at @s run damage @s 5 thorns by @p
execute as @s at @s run particle block_crumble{block_state:"minecraft:oak_wood"} ~ ~ ~ 0.2 0.2 0.2 0.2 5

kill @s