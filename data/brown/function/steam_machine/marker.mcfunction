scoreboard players add @s brown_debug 1

execute if score @s[tag=brown.steam_machine_marker_1] brown_debug matches 1 run tp @s ~ ~ ~ ~ ~
execute if score @s[tag=brown.steam_machine_marker_2] brown_debug matches 1 run tp @s ~ ~ ~ ~45 ~
execute if score @s[tag=brown.steam_machine_marker_3] brown_debug matches 1 run tp @s ~ ~ ~ ~90 ~
execute if score @s[tag=brown.steam_machine_marker_4] brown_debug matches 1 run tp @s ~ ~ ~ ~135 ~
execute if score @s[tag=brown.steam_machine_marker_5] brown_debug matches 1 run tp @s ~ ~ ~ ~180 ~
execute if score @s[tag=brown.steam_machine_marker_6] brown_debug matches 1 run tp @s ~ ~ ~ ~225 ~
execute if score @s[tag=brown.steam_machine_marker_7] brown_debug matches 1 run tp @s ~ ~ ~ ~270 ~
execute if score @s[tag=brown.steam_machine_marker_8] brown_debug matches 1 run tp @s ~ ~ ~ ~315 ~

execute if score @s brown_debug matches 2.. run tp @s ^ ^ ^0.8

execute at @s run particle cloud ~ ~ ~ 0.3 0.2 0.3 0 5 normal

execute if score @s brown_debug matches 8.. run function brown:steam_machine/reset