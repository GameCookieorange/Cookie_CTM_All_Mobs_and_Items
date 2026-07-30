scoreboard players add @s purple_debug 1
execute at @s run particle falling_dust{block_state:gravel} ~ ~0.5 ~ 1 0.1 1 2 3

execute if entity @e[type=!#not_mob, type=!player, distance=..4, tag=!purple.silence] as @e[type=!#not_mob, type=!player, distance=..4, tag=!purple.silence, tag=!purple.mute_creeper] run tag @s add purple.got_silence
execute if entity @e[type=!#not_mob, type=!player, distance=..4, tag=!purple.silence] as @e[type=!#not_mob, type=!player, distance=..4, tag=!purple.silence, tag=!purple.mute_creeper] run scoreboard players set @s purple_silence 0
execute if entity @e[type=!#not_mob, type=!player, distance=..4, tag=!purple.silence, tag=!purple.mute_creeper] as @e[type=!#not_mob, type=!player, distance=..4, tag=!purple.silence] run effect give @s slow_falling 5 2
execute if score @s purple_debug matches 80.. run kill @s