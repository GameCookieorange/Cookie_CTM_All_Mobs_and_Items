
scoreboard players add @s cyan_timer 1

execute if score @s cyan_timer matches 1 run scoreboard players operation #cyan_target cyan_id = @n[type=marker, tag=cyan.bullet_potion_marker] cyan_id

execute if score @s cyan_timer matches 1 run data merge entity @s {Steps:10}

execute if score @s cyan_timer matches 1 run data modify entity @s Target set from entity @e[type=!#cyan:can_no_target, limit=1, sort=random, distance=..30] UUID

execute if score @s cyan_timer matches 400.. run kill @s

# execute if entity @a[distance=..20] as @s at @s run give @a apple

