effect give @s slow_falling 3 1 true
effect give @s speed 4 0 true

summon marker 0 0 0 {Tags:["object"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object,limit=1] ^0.8 ^0.7 ^

execute as @s run data modify entity @s Motion set from entity @e[tag=object,limit=1, sort=nearest] Pos

kill @e[tag=object]
