scoreboard players add @s gray_debug 1


execute as @s[type=wind_charge] run kill @s
execute as @s[type=breeze_wind_charge] run kill @s


execute if score @s gray_debug matches 100.. run data modify entity @s NoGravity set value false

execute if score @s gray_debug matches 100.. run tag @s add gray.moved_projectile