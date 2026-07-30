scoreboard players add @s purple_debug 1

execute if score @s purple_debug matches 1 run data modify entity @s Owner set from entity @e[type=phantom, limit=1, sort=nearest, tag=purple.harpy] UUID

execute if score @s[tag=purple.harpy_arrow_1] purple_debug matches 1 at @s rotated as @e[type=phantom, limit=1, sort=nearest, tag=purple.harpy] run tp @s ~ ~ ~ ~-15 ~

execute if score @s[tag=purple.harpy_arrow_2] purple_debug matches 1 at @s rotated as @e[type=phantom, limit=1, sort=nearest, tag=purple.harpy] run tp @s ~ ~ ~ ~ ~

execute if score @s[tag=purple.harpy_arrow_3] purple_debug matches 1 at @s rotated as @e[type=phantom, limit=1, sort=nearest, tag=purple.harpy] run tp @s ~ ~ ~ ~15 ~


execute if score @s purple_debug matches 1 run function purple:mob/harpy/caculation

execute if score @s purple_debug matches 200.. run kill @s