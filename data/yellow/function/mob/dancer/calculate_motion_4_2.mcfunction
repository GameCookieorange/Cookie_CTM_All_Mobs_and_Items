effect give @s slow_falling 3 1 true
effect give @s speed 4 0 true

execute as @s facing entity @e[type=#attack_entity, limit=1, sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

summon marker 0 0 0 {Tags:["object"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object,limit=1] ^-0.8 ^0.7 ^0.5

execute as @s run data modify entity @s Motion set from entity @e[tag=object,limit=1, sort=nearest] Pos

kill @e[tag=object]
