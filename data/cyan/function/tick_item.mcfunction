execute as @e[type=marker, tag=cyan.bullet_potion_marker] unless predicate cyan:is_sitting run function cyan:item/shulker_potion/spawn_bullets
execute as @a[scores={cyan_used_potion=1..}] at @s as @n[type=lingering_potion, tag=!cyan_checked_potion] at @s run function cyan:item/shulker_potion/potion_ini
execute as @e[type=shulker_bullet, tag=cyan.player_potion_bullet] at @s run function cyan:item/shulker_potion/init_bullet
