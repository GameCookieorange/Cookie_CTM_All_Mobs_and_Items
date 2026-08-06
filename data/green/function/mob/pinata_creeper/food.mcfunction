execute as @s rotated as @e[type=armor_stand, limit=1, sort=nearest, tag=green.pinata_armor_stand,predicate=!green:is_sitting] run tp @s ~ ~ ~ ~ ~

summon marker 0 0 0 {Tags:["object"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object,limit=1] ^ ^0.6 ^0.2

execute as @s run data modify entity @s Motion set from entity @e[tag=object,limit=1, sort=nearest] Pos

kill @e[tag=object]

tag @s remove green.pinata_food