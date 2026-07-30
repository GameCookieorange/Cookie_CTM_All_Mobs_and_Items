scoreboard players add @s blue_debug 1

execute if score @s blue_debug matches 20.. if entity @e[tag=blue.matrix_jellyfish, distance=..7] run function blue:mob/jellyfish/marker/explode


execute if entity @e[type=fireball, tag=blue.ghast_fireball_new, distance=..3.5] run tp @s @e[type=fireball, tag=blue.ghast_fireball_new, distance=..3.5, limit=1, sort=nearest]

execute unless entity @e[type=fireball, tag=blue.ghast_fireball_new, distance=..3.5, sort=nearest] run kill @s

execute if score @s blue_debug matches 600.. run kill @s

# give @a apple