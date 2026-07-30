scoreboard players add @s cyan_debug 1

execute if score @s cyan_debug matches 260 at @s run particle squid_ink ~ ~1.75 ~ 0.5 0.5 0.5 0.2 100 force

execute if score @s cyan_debug matches 260.. run tp @s ~ ~-2000 ~

execute if score @s cyan_debug matches 270.. run kill @s

effect give @s resistance 1 10 true

particle dust_color_transition{from_color:[0.227,0.208,0.271],to_color:[0.843,0.655,0.988],scale:1.7} ~ ~ ~ 1.5 1.5 1.5 0.5 3 force