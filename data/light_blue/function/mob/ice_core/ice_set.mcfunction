# execute at @s run spreadplayers ~ ~ 0 3 false @s
function light_blue:mob/ice_core/count_pos

particle minecraft:snowflake ~ ~ ~ 0.1 0.1 0.1 0.01 20

execute at @s run setblock ~ ~ ~ minecraft:ice keep

kill @s 