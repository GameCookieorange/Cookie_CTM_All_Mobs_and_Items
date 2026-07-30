execute as @p[distance=..2] at @s run damage @s 5.5 mob_attack by @n[tag=light_blue.ice_crystal, type=bee, limit=1, sort=nearest]
playsound block.glass.break hostile @a ~ ~ ~ 1 1.6 1

effect give @p[distance=..2] minecraft:slowness 3 20 true
particle snowflake ~ ~ ~ 0.1 0.1 0.1 0.7 75 normal
tp @s ~ ~-700 ~
kill @s