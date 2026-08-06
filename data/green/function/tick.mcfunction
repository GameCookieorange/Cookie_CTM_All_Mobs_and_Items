execute as @e[tag=green.bull, tag=!green.attack_bull, type=ravager] at @s run function green:mob/matador_creeper/bull/bull_ini
execute as @e[tag=green.bull, tag=green.attack_bull, type=ravager] at @s run function green:mob/matador_creeper/bull/attack
execute as @e[tag=green.matador_creeper, type=creeper] at @s run function green:mob/matador_creeper/matador
execute as @e[tag=green.dash_point, type=marker] at @s run function green:mob/matador_creeper/marker

execute as @e[tag=green.phoenix_creeper, type=creeper] at @s run function green:mob/phoenix_creeper/phoenix_ini
execute as @e[tag=green.summon_core, type=armor_stand, predicate=green:green_phoenix] at @s run function green:mob/phoenix_creeper/summon_core
execute as @e[tag=green.creeper_core, type=magma_cube] at @s run function green:mob/phoenix_creeper/revive

execute as @e[tag=green.firework_creeper, type=creeper] at @s run function green:mob/firework_creeper/firework_ini

execute as @e[type=creeper, tag=green.panic_creeper] at @s run function green:mob/panic_creeper/panic_creeper
execute as @e[type=marker, tag=green.cat_marker] at @s run function green:mob/panic_creeper/marker

execute as @e[type=creeper, tag=green.carnival_creeper] at @s run function green:mob/carnival_creeper/carnival_creeper
execute as @e[type=marker, tag=green.carnival_marker] at @s run function green:mob/carnival_creeper/marker/marker

execute as @e[type=creeper, tag=green.indignant_creeper] at @s run function green:mob/indignant_creeper/indignant_creeper

execute as @e[type=creeper, tag=green.pinata_creeper] at @s run function green:mob/pinata_creeper/pinata_ini
execute as @e[type=armor_stand, tag=green.pinata_armor_stand] at @s run function green:mob/pinata_creeper/armor_stand_ini

execute as @e[tag=green.firework_shooter] at @s run function green:mob/firework_shooter/firework_shooter

execute as @a at @s if items entity @s armor.head leather_helmet[custom_data={"green_creeper_hat":1b}] run function green:player_with_hat/player/join_party_creeper

execute as @a[tag=!green.not_join_party_creeper] at @s unless items entity @s armor.head leather_helmet[custom_data={"green_creeper_hat":1b}] run function green:player_with_hat/not_join_party_creeper