execute as @e[type=!player, type=!#minecraft:not_mob ,distance=..5, nbt={HurtTime:10s}, limit=1, sort=nearest] run tag @s add brown.got_hot_potato
tag @s remove brown.got_hot_potato
