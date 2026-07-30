execute as @e[tag=yellow.dancer] at @s run function yellow:mob/dancer/dancer_ini

execute as @e[tag=yellow.gibdo] at @s run function yellow:mob/gibdo/gibdo_ini

execute as @e[tag=yellow.antlion] at @s run function yellow:mob/antlion/antlion_ini
execute as @e[tag=yellow_antlion_sand, type=armor_stand] at @s run function yellow:mob/antlion/sand_attack
execute as @e[tag=yellow.block, type=falling_block] if entity @e[tag=yellow.antlion, distance=..1.2] run kill @s

execute as @e[tag=yellow.mummy] at @s run function yellow:mob/mummy/mummy_ini

execute as @a[tag=yellow.thirsty] at @s run function yellow:mob/dry_creature/thirsty_level
execute as @a[scores={yellow_player_death=1..}] run function yellow:mob/dry_creature/reset
execute as @a[scores={yellow_thirsty_level=1..}] run function yellow:mob/dry_creature/thirsty_effect

execute as @e[tag=yellow.mirror_creature] at @s run function yellow:mob/mirror/mirror_creature_ini
execute as @e[type=#minecraft:throwable_or_projectile, tag=yellow_reflection] run function yellow:mob/mirror/reflection_item

execute as @e[tag=yellow.bomb, type=tnt] at @s run function yellow:mob/bomber/bomb
execute as @e[tag=yellow.bomber, type=piglin] at @s run function yellow:mob/bomber/bomber_ini

execute as @e[tag=yellow.ghost, type=marker, predicate=!yellow:is_sitting] at @s run function yellow:mob/pharaoh/pharaoh_ghost_ini
execute as @e[tag=yellow.ghost_pharaoh, type=armor_stand, tag=!yellow.is_active] at @s run function yellow:mob/pharaoh/pharaoh_ghost

execute as @e[tag=yellow.mirage] at @s run function yellow:mob/mirage/mirage_ini
execute as @e[tag=yellow.mirage_fake] at @s run function yellow:mob/mirage/mirage_fake
execute as @e[tag=yellow.mirage_fake_marker, predicate=!yellow:is_sitting] at @s run function yellow:mob/mirage/mirage_fake_marker
execute as @a[tag=yellow.player_kill_fake] at @s run function yellow:mob/mirage/kill_fake/is_killed_fake



