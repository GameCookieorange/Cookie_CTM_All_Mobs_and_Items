execute if predicate cyan:is_on_ground run scoreboard players add @s cyan_debug 4
execute if predicate cyan:is_on_ground as @e[tag=!cyan.space_creature, distance=..3] run effect give @s wither 2 1 true
execute if predicate cyan:is_on_ground at @s run particle totem_of_undying ~ ~ ~ ~1 ~0.1 ~1 0 2 normal



scoreboard players add @s cyan_debug 1

execute if score @s cyan_debug matches 600.. run kill @s