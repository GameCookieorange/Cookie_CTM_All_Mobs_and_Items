execute as @s[tag=white.elf, type=allay] at @s run function white:mob/elf/elf_ini
execute as @s[tag=white.dweller] at @s run function white:mob/dweller/dweller_ini
execute as @s[tag=white.treant] at @s run function white:mob/treant/treant_ini
execute as @s[tag=white.dusk_skeleton, type=bogged] at @s run function white:mob/dusk_dweller/dusk_ini
execute as @s[tag=white.forest_protector] at @s run function white:mob/forest_protector/golem

execute as @s[tag=white.elite_hunter] at @s run function white:mob/elite_hunter/skeleton

execute as @s[team=white_forest_creature, type=!phantom, type=!allay] at @s run function white:mob/forest_vs_others/forest_attack
execute as @s[team=white_invade_creature] at @s run function white:mob/forest_vs_others/others_attack



