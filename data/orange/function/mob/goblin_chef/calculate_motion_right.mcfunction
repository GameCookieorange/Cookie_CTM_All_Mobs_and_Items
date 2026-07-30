summon marker 0 0 0 {Tags:["object_jump"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object_jump,limit=1] ^0.05 ^0.4 ^0.5

execute as @s run data modify entity @s Motion set from entity @e[tag=object_jump,limit=1, sort=nearest] Pos

kill @e[tag=object_jump]
