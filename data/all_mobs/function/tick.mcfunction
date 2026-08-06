execute as @e[tag=white.mob] at @s run function white:tick
execute as @e[tag=orange.mob] at @s run function orange:tick
execute as @e[tag=magenta.mob] at @s run function magenta:tick
execute as @e[tag=light_blue.mob] at @s run function light_blue:tick
execute as @e[tag=yellow.mob] at @s at @s run function yellow:tick
execute as @e[tag=light_green.mob] at @s run function light_green:tick
execute as @e[tag=pink.mob] at @s run function pink:tick
execute as @e[tag=gray.mob] at @s run function gray:tick
execute as @e[tag=light_gray.mob] at @s run function light_gray:tick
execute as @e[tag=cyan.mob] at @s run function cyan:tick
execute as @e[tag=purple.mob] at @s run function purple:tick
execute as @e[tag=blue.mob] at @s run function blue:tick
execute as @e[tag=brown.mob] at @s run function brown:tick
execute as @e[tag=green.mob] at @s run function green:tick
execute as @e[tag=red.mob] at @s run function red:tick
execute as @e[tag=black.mob] at @s run function black:tick
execute as @e[tag=final.mob] at @s run function final:tick

execute as @a[predicate=magenta:mobs/look_desert_shadow] at @s run function magenta:parched/notice


execute as @a[scores={light_blue_ice_level=1..}] run function light_blue:mob/ice_skeleton/ice_level
execute as @a[scores={light_blue_player_deaths=1..}] run function light_blue:mob/ice_skeleton/reset
