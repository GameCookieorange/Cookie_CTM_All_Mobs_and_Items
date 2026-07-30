scoreboard players add @s cyan_debug 1

execute as @a[distance=..5] run effect give @s slow_falling 2 0 false
execute if entity @a[distance=..1] run function cyan:mob/hyperbaric/damage
execute if score @s cyan_debug matches 1800.. at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.5 10 normal

execute if score @s cyan_debug matches 1800.. run tp @s ~ ~-7000 ~

execute if score @s cyan_debug matches 1900.. run kill @s

execute as @s[nbt={HasStung:1b}] run data modify entity @s HasStung set value false


