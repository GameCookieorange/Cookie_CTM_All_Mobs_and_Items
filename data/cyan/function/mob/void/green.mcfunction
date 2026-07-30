scoreboard players add @s cyan_void_green 1

execute if score @s cyan_void_green matches 1 run kill @e[distance=..8, limit=1, sort=nearest, tag=cyan.dark_matter_creeper]

execute if score @s cyan_void_green matches 1 run item replace entity @s armor.head with green_concrete_powder 1

execute if score @s cyan_void_green matches 1 run effect give @s instant_damage 1 100 true

execute if score @s cyan_void_green matches 1 run effect give @s speed 15 3 true

execute if score @s cyan_void_green matches 1 at @s run particle heart ~ ~ ~ 1 1 1 0 20 normal

particle dust_color_transition{from_color:[0.118,0.729,0.220],to_color:[0.016,0.490,0.251],scale:2.5} ~ ~ ~ 1 1 1 0 2 normal

execute if score @s cyan_void_green matches 300.. run function cyan:mob/void/remove