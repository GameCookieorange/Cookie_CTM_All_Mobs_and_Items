scoreboard players add @s magenta_debug 1

# move
execute if score @s magenta_debug matches 0..100 run tp @s ^ ^ ^0.25 facing entity @e[type=#minecraft:attack_entity, limit=1, distance=..20] feet

# head attack end
execute if entity @e[type=#minecraft:attack_entity, distance=..2.5] at @s[tag=!magenta.finish_attack] if score @s magenta_debug matches 0..100 run function magenta:head_hunter/head/attack
execute at @s if score @s magenta_debug matches 0..100 run particle dragon_breath ^ ^1 ^-0.6 0.2 0.2 0.2 0 1 normal

execute unless block ^ ^ ^1.2 #air run scoreboard players add @s magenta_debug 200
execute at @s unless block ~ ~-0.1 ~ #magenta:passable run function magenta:head_hunter/head/get_head_data

# debug
execute if score @s magenta_debug matches 4000.. at @s run kill @s