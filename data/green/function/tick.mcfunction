execute as @e[tag=green.bull, tag=!green.attack_bull, type=ravager] at @s run function green:mob/matador_creeper/bull/bull_ini
execute as @e[tag=green.bull, tag=green.attack_bull, type=ravager] at @s run function green:mob/matador_creeper/bull/attack
execute as @e[tag=green.matador_creeper, type=creeper] at @s run function green:mob/matador_creeper/matador
execute as @e[tag=green.dash_point, type=marker] at @s run function green:mob/matador_creeper/marker

execute as @e[tag=green.phoenix_creeper, type=creeper] at @s run function green:mob/phoenix_creeper/phoenix_ini
execute as @e[tag=green.summon_core, type=armor_stand, predicate=green:green_phoenix] at @s run function green:mob/phoenix_creeper/summon_core
execute as @e[tag=green.creeper_core, type=magma_cube] at @s run function green:mob/phoenix_creeper/revive

execute as @e[tag=green.firework_creeper, type=creeper] at @s run function green:mob/firework_creeper/firework_ini

# execute if 