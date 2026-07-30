scoreboard players add @s pink_debug 1

execute if score @s pink_debug matches 1 run data modify entity @s Owner set from entity @e[type=drowned, limit=1, sort=nearest, tag=pink.drowned_shotgunner] UUID

execute if score @s[tag=pink.drowned_arrow_0] pink_debug matches 1 at @s rotated as @e[type=drowned, limit=1, sort=nearest, tag=pink.drowned_shotgunner] run tp @s ~ ~ ~ ~ ~
execute if score @s[tag=pink.drowned_arrow_1] pink_debug matches 1 at @s rotated as @e[type=drowned, limit=1, sort=nearest, tag=pink.drowned_shotgunner] run tp @s ~ ~ ~ ~-5 ~

execute if score @s[tag=pink.drowned_arrow_2] pink_debug matches 1 at @s rotated as @e[type=drowned, limit=1, sort=nearest, tag=pink.drowned_shotgunner] run tp @s ~ ~ ~ ~5 ~

execute if score @s[tag=pink.drowned_arrow_3] pink_debug matches 1 at @s rotated as @e[type=drowned, limit=1, sort=nearest, tag=pink.drowned_shotgunner] run tp @s ~ ~ ~ ~-10 ~

execute if score @s[tag=pink.drowned_arrow_4] pink_debug matches 1 at @s rotated as @e[type=drowned, limit=1, sort=nearest, tag=pink.drowned_shotgunner] run tp @s ~ ~ ~ ~10 ~


execute if score @s pink_debug matches 1 run function pink:mob/ghost_shotgunner/arrow/caculation

execute if score @s pink_debug matches 200.. run kill @s