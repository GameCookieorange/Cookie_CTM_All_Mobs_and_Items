execute as @e[type=ghast, predicate=!black:mob/king_fall, tag=black.king_ghast] at @s run function black:mob/king_ghast/kill_king
execute as @e[type=blaze, predicate=!black:mob/is_sitting, tag=black.king_ghast_crown] at @s run kill @s
execute as @e[type=ghast, tag=black.king_ghast] at @s run function black:mob/king_ghast/ghast
execute as @e[type=marker, tag=black.king_ghast] at @s run function black:mob/king_ghast/marker
