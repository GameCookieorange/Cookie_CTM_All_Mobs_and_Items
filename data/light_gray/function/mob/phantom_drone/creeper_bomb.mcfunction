execute if score @s light_gray_debug matches 30.. run data merge entity @s {ignited:1b}

execute unless predicate light_gray:is_sitting run data merge entity @s {Glowing:1b}

execute unless predicate light_gray:is_sitting run scoreboard players add @s light_gray_debug 1
 