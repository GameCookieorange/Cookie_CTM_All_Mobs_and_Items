summon marker 0 0 0 {Tags:["object"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object,limit=1] ~ ~0.3 ~-0.85

execute as @s run data modify entity @s Motion set from entity @e[tag=object,limit=1, sort=nearest] Pos

kill @e[tag=object]
