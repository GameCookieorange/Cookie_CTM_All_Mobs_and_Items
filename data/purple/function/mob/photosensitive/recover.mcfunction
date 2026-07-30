effect give @s instant_health 1 2 true
particle electric_spark ~ ~ ~ 1 1.5 1 1 50 normal
particle happy_villager ~ ~ ~ 1 1.5 1 1 20 normal
scoreboard players remove @s purple_debug 400

execute at @s[tag=!purple.got_silence] run playsound entity.creaking.deactivate hostile @a ~ ~ ~ 2 1