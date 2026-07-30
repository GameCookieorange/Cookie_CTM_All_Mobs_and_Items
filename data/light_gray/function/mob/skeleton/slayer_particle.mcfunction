# scoreboard players add @s light_gray_debug 1

# execute as @s if score @s light_gray_debug matches 2 run function light_gray:mob/wither_skeleton_slayer/draw_line

# execute as @e[type=#minecraft:attack_entity, distance=..3] if entity @e[type=marker, tag=slay_attack_range] run damage @s 3 mob_attack by @n[tag=light_gray.skeleton_slayer]

# execute as @s if score @s light_gray_debug matches 3 run kill @e[type=marker, sort=nearest, limit=2, tag=slay_attack_range]

# execute as @s if score @s light_gray_debug matches 3 run scoreboard players set @s light_gray_debug 0



scoreboard players add @s light_gray_debug 1

# 1. 產生粒子與 Marker
execute as @s if score @s light_gray_debug matches 2 run function light_gray:mob/skeleton/draw_line

execute as @e[tag=slay_attack_range] at @s as @e[type=!#not_mob, team=!light_gray_machine_team, distance=..2] run damage @s 3 mob_attack by @n[tag=light_gray.skeleton_slayer]


execute as @s if score @s light_gray_debug matches 3 run kill @e[type=marker, tag=slay_attack_range, limit=2, sort=nearest]

execute as @s if score @s light_gray_debug matches 3 run scoreboard players set @s light_gray_debug 0
