summon marker 0 0 0 {Tags:["object_jump"]}

execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object_jump,limit=1] ^ ^1 ^-0.8
# execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object_jump,limit=1] ^ ^0.8 ^-2.5

execute as @s run data modify entity @s Motion set from entity @e[tag=object_jump,limit=1, sort=nearest] Pos

kill @e[tag=object_jump]

# summon marker 0 0 0 {Tags:["object_jump"]}

# # execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object_jump,limit=1] ^ ^0.75 ^-0.4
# execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=object_jump,limit=1] ~ ~0.7 ~

# execute as @s run data modify entity @s Motion set from entity @e[tag=object_jump,limit=1, sort=nearest] Pos

# kill @e[tag=object_jump]