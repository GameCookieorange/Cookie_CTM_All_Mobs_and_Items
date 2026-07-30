execute as @e[type=!#not_mob, team=!light_gray_machine_team, distance=..4] run damage @s 4 mob_attack by @n[tag=light_gray.wither_skeleton_slayer]

scoreboard players add @s light_gray_debug 1

execute as @s if score @s light_gray_debug matches 1 rotated ~0 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 2 rotated ~30 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 3 rotated ~60 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 4 rotated ~90 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 5 rotated ~120 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 6 rotated ~150 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 7 rotated ~180 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 8 rotated ~210 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 9 rotated ~240 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 10 rotated ~270 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 11 rotated ~300 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line
execute as @s if score @s light_gray_debug matches 12 rotated ~330 ~ run function light_gray:mob/wither_skeleton_slayer/draw_line

# execute as @s if score @s light_gray_debug matches 7 run execute at @s run playsound cookieorange_res:custom.mob.light_gray.elite_slayer master @a ~ ~ ~ 0.4 1

execute as @s if score @s light_gray_debug matches 13 run scoreboard players set @s light_gray_debug 0


# give @a cookie
