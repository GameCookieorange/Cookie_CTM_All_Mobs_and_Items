execute unless entity @e[tag=brown.turret, tag=!brown.turret_bottom, distance=..0.5] run function brown:automatic_turret/reset
execute unless predicate brown:is_sitting run scoreboard players add @s brown_debug 1
execute if score @s brown_debug matches 10.. run function brown:automatic_turret/reset
