tag @s add pink.pufferfish_cal

tp @s ^ ^ ^ facing entity @e[distance=..30, type=!#not_mob, team=!pink_pirate_team, limit=1, sort=nearest] eyes

summon marker 0 0 0 {Tags:["object"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object,limit=1] ^ ^0.1 ^1.5

execute as @s run data modify entity @s Motion set from entity @e[tag=object,limit=1, sort=nearest] Pos

kill @e[tag=object]

