# give @a cookie

summon marker 0 0 0 {Tags:["orange_push_calc"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=orange_push_calc,limit=1] ^ ^0.6 ^-0.8

execute as @s run data modify entity @s Motion set from entity @e[tag=orange_push_calc,limit=1, sort=nearest] Pos

kill @e[tag=orange_push_calc]
