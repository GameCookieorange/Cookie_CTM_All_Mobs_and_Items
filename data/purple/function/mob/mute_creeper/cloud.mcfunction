execute at @s run particle gust_emitter_large ~ ~ ~ 4 4 4 2 20

execute if entity @e[type=!#not_mob, type=!player, distance=..20, tag=!purple.silence] as @e[type=!#not_mob, type=!player, distance=..24, tag=!purple.silence] run scoreboard players set @s purple_silence 0
execute if entity @e[type=!#not_mob, type=!player, distance=..20, tag=!purple.silence] as @e[type=!#not_mob, type=!player, distance=..24, tag=!purple.silence] run tag @s add purple.got_silence
execute if entity @e[type=#minecraft:attack_entity, distance=..20] run effect give @e[type=#minecraft:attack_entity, distance=..20] glowing 20 1 false

kill @s