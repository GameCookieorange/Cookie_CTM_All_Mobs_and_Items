execute as @e[distance=..2.5, type=#minecraft:attack_entity] at @s run damage @s 4 minecraft:indirect_magic by @n[tag=magenta.head_hunter, type=zombie, limit=1, sort=nearest]

execute at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 0.5 1
execute at @s run particle cloud ~ ~ ~ 0 0 0 0.3 30 normal


tag @s add magenta.finish_attack

scoreboard players add @s magenta_debug 200