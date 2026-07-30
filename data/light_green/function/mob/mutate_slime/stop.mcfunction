scoreboard players add @s light_green_timer 1

execute if score @s light_green_timer matches 1 run data modify entity @s Motion set value [0.0,-0.1,0.0]
execute if score @s light_green_timer matches 1 run tp @s ~ ~ ~ ~ ~

# give @a cookie

particle minecraft:falling_lava ~ ~1 ~ 0.2 0.2 0.2 0.01 1