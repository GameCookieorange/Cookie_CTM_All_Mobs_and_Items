execute at @s run tp @s ^ ^ ^ facing entity @e[tag=!green.is_party_creeper, tag=!green.not_party_creeper, type=!#minecraft:not_mob ,distance=..40, limit=1, sort=nearest] eyes

execute at @s run data modify entity @s Owner set from entity @e[type=creeper, tag=green.matador_creeper, limit=1, sort=nearest, distance=..10] UUID

summon marker 0 0 0 {Tags:["object"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object,limit=1] ^ ^0.05 ^2

execute as @s run data modify entity @s Motion set from entity @e[tag=object,limit=1, sort=nearest] Pos

kill @e[tag=object]


tag @s remove green.matador_creeper_trident