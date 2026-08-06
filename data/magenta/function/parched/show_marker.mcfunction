scoreboard players add @s magenta_debug 1

execute if score @s magenta_debug matches 1..2 rotated as @p run tp @s ^ ^ ^ ~ ~

execute if score @s magenta_debug matches 2 run execute as @s at @s run summon marker ^ ^ ^30 {Tags:["magenta.mob","magenta.dash_point"]}

# =================================================

execute if score @s magenta_debug matches 2 run function magenta:parched/dash_start

execute if score @s magenta_debug matches 2 run kill @e[tag=magenta.dash_point, sort=nearest, limit=1]

execute if score @s magenta_debug matches 3.. run function magenta:parched/dash_marco with entity @s data

execute if entity @e[tag=magenta.desert_shadow, distance=..2] at @s run function magenta:parched/show_yourself
execute if entity @s[nbt={HurtTime:10s}] at @s run function magenta:parched/show_yourself


execute if score @s magenta_debug matches 40.. run kill @s