scoreboard players add @s cyan_debug 1

execute if score @s cyan_debug matches 1 run spreadplayers ~ ~ 10 12 true @s

execute if score @s cyan_debug matches 1..40 at @s run particle dust_color_transition{from_color:[0.227,0.208,0.271],to_color:[0.843,0.655,0.988],scale:2.4} ~ ~ ~ 0.1 3 0.1 0.05 6 normal

execute if score @s cyan_debug matches 41 run tag @s add cyan.dark_matter_marker_can_teleport

execute as @s[tag=cyan.dark_matter_marker_can_teleport] if entity @e[distance=..2.5, sort=nearest, tag=cyan.dark_matter] run kill @s

execute if score @s cyan_debug matches 60.. run kill @s