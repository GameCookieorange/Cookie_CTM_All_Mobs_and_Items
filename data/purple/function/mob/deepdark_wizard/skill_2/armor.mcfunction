scoreboard players add @s purple_timer 1

execute if score @s[tag=!purple.is_on_ground] purple_timer matches 0..30 if predicate purple:is_on_ground at @s run kill @s
execute if score @s[tag=!purple.is_on_ground] purple_timer matches 30.. if predicate purple:is_on_ground at @s run function purple:mob/deepdark_wizard/skill_2/on_ground

execute as @s[tag=purple.is_on_ground, tag=purple.glowing_explosion] at @s run effect give @e[type=!#minecraft:not_mob, tag=!purple.deepdark_wizard, distance=..3] glowing 5 0 false

particle electric_spark ~ ~0.1 ~ 0.1 0.1 0.1 0 3 normal

execute if score @s purple_timer matches 60.. run kill @s