execute as @e[tag=!cyan.space_creature, type=!#not_mob, distance=..4] at @s run damage @s 5 indirect_magic by @n[tag=cyan.gray_alien, limit=1, sort=nearest] from @n[tag=cyan.gray_alien, limit=1, sort=nearest]

execute at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 0.8 1.5

execute at @s run particle explosion ~ ~ ~ 0.8 0.8 0.8 0.01 5 normal

execute at @s run setblock ~ ~ ~ minecraft:air destroy

kill @s

