execute at @s run tp @s ^ ^ ^ facing entity @e[type=armor_stand, tag=green.pinata_armor_stand, limit=1, sort=nearest, predicate=!green:is_sitting] feet

particle small_gust ~ ~0.2 ~ 0.8 0.4 0.8 0.2 10 normal

summon marker 0 0 0 {Tags:["object"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object,limit=1] ^ ^0.55 ^0.7

execute as @s run data modify entity @s Motion set from entity @e[tag=object,limit=1, sort=nearest] Pos

kill @e[tag=object]

