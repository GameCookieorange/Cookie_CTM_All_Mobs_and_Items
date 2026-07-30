execute as @e[team=!white_forest_creature, type=!#minecraft:not_mob, distance=..2, limit=1, sort=nearest] at @s run damage @s 3 thorns by @e[type=bogged, tag=white.dusk_skeleton, limit=1, sort=nearest]

execute as @s at @s run particle block_crumble{block_state:"minecraft:oak_wood"} ~ ~ ~ 0.2 0.2 0.2 0.2 5

kill @s