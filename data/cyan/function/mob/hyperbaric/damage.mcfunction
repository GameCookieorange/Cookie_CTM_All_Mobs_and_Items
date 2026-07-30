playsound entity.generic.explode hostile @a ~ ~ ~ 0.4 1.8 1
execute as @a[distance=..1] run damage @s 6 mob_attack by @e[tag=cyan.hyperbaric, limit=1, sort=nearest] from @e[tag=cyan.hyperbaric, limit=1, sort=nearest]
scoreboard players set @s cyan_debug 1800