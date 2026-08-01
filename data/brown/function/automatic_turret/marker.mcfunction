execute unless entity @e[tag=brown.turret, distance=..0.2] run kill @s
execute unless predicate brown:is_sitting run scoreboard players add @s brown_timer 1

execute if score @s brown_timer matches 10.. run kill @s