scoreboard players add @s light_green_debug 1

execute if score @s light_green_debug matches 1 run data modify entity @s Rotation set from entity @e[tag=light_green.swamp_hunter, type=bogged, sort=nearest, limit=1] Rotation

execute if score @s light_green_debug matches 1.. run tp @s ^ ^ ^0.5

execute if score @s light_green_debug matches 40.. run kill @s


execute as @e[tag=!light_green.swamp_hunter, type=!#not_mob, limit=1, sort=nearest, distance=..2] at @s run function light_green:mob/swamp_hunter/being_hooked

execute unless block ^ ^ ^2 #white:passable at @s run kill @s
execute unless block ^ ^ ^1 #white:passable at @s run kill @s
execute unless block ~ ~ ~ #white:passable at @s run kill @s

particle minecraft:block_crumble{block_state:oxidized_copper_chain} ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
particle minecraft:block_crumble{block_state:copper_chain} ~ ~ ~ 0.2 0.2 0.2 0.1 15 normal
particle minecraft:block_crumble{block_state:glowstone} ~ ~ ~ 0.4 0.4 0.4 0.1 5 normal
playsound block.chain.break hostile @a ~ ~ ~ 0.6 1.5