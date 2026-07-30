particle crit ~ ~1 ~ 0.6 0.6 0.6 0.1 5 normal
particle enchanted_hit ~ ~1 ~ 0.6 0.6 0.6 0.1 5 normal

scoreboard players add @s light_gray_fixed_machine 1
execute if score @s light_gray_fixed_machine matches 1..5 at @s run particle heart ~ ~1.5 ~ 0.4 0.4 0.4 0.5 2 normal
execute if score @s light_gray_fixed_machine matches 120.. run function light_gray:mob/technician/remove_tag