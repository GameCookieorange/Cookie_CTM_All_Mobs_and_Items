scoreboard players add @s cyan_void_purple 1

execute if score @s cyan_void_purple matches 1 run kill @e[distance=..8, limit=1, sort=nearest, tag=cyan.abyssal_dark_matter_creeper]

execute if score @s cyan_void_purple matches 1 run item replace entity @s armor.head with purple_concrete_powder 1

execute if score @s cyan_void_purple matches 1 run effect give @s instant_damage 1 100 true

execute if score @s cyan_void_purple matches 1 at @s run particle heart ~ ~ ~ 1 1 1 0 20 normal

execute if score @s cyan_void_purple matches 1..280 run effect give @s resistance 1 100 true
execute if score @s cyan_void_purple matches 1..300 at @s run particle crit ~ ~ ~ 0.8 0.8 0.8 0.5 10

effect give @a[distance=..5] darkness 2 2 true
particle dust_color_transition{from_color:[0.773,0.086,0.878],to_color:[0.329,0.047,0.490],scale:2.5} ~ ~ ~ 1 1 1 0 2 normal

execute if score @s cyan_void_purple matches 300.. run function cyan:mob/void/remove