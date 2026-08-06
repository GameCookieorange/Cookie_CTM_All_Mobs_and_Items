scoreboard players add @s green_timer 1

execute if score @s green_timer matches 20 run function green:mob/carnival_creeper/marker/choose
execute if score @s green_timer matches 20.. run scoreboard players set @s green_timer 1


scoreboard players add @s green_debug 1

# execute if score @s green_debug matches 1 run data modify entity @s owner set from entity @e[type=creeper, limit=1, tag=green.carnival_creeper, sort=nearest] UUID

execute if score @s[tag=green.carnival_marker_1] green_debug matches 1 run tp @s ~ ~ ~ ~ ~
execute if score @s[tag=green.carnival_marker_2] green_debug matches 1 run tp @s ~ ~ ~ ~45 ~
execute if score @s[tag=green.carnival_marker_3] green_debug matches 1 run tp @s ~ ~ ~ ~90 ~
execute if score @s[tag=green.carnival_marker_4] green_debug matches 1 run tp @s ~ ~ ~ ~135 ~
execute if score @s[tag=green.carnival_marker_5] green_debug matches 1 run tp @s ~ ~ ~ ~180 ~
execute if score @s[tag=green.carnival_marker_6] green_debug matches 1 run tp @s ~ ~ ~ ~225 ~
execute if score @s[tag=green.carnival_marker_7] green_debug matches 1 run tp @s ~ ~ ~ ~270 ~
execute if score @s[tag=green.carnival_marker_8] green_debug matches 1 run tp @s ~ ~ ~ ~315 ~

execute if score @s green_debug matches 2.. at @s run tp @s ^ ^ ^0.15

execute if score @s green_debug matches 100.. run function green:mob/carnival_creeper/marker/reset

execute unless block ~ ~ ~ #minecraft:passable run function green:mob/carnival_creeper/marker/reset

particle copper_fire_flame ~ ~ ~ 0 0 0 0 1 normal

# give @a apple