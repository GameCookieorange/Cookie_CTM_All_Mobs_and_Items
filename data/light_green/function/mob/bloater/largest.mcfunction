execute as @s run data merge entity @s {Size:3}

execute as @s run function light_green:mob/bloater/initial/large
scoreboard players set @s light_green_timer 0
scoreboard players set @s light_green_debug 0
# give @a cookie
