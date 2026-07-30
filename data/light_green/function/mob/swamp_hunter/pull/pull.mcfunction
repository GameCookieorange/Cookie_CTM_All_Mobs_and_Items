scoreboard players add @s light_green_pulled_timer 1

execute at @s facing entity @e[type=bogged, sort=nearest, limit=1, tag=light_green.swamp_hunter, tag=light_green.swamp_hunter_using_skill] feet run tp @s ^ ^ ^0.25

particle minecraft:block_crumble{block_state:oxidized_copper_chain} ~ ~1 ~ 1 1 1 0.1 10 normal
particle minecraft:block_crumble{block_state:copper_chain} ~ ~1 ~ 1 1 1 0.1 10 normal
particle minecraft:block_crumble{block_state:glowstone} ~ ~ ~ 1 1 1 0.1 8 normal

playsound block.chain.hit hostile @a ~ ~ ~ 0.5 1.5

effect give @s slowness 1 3 false

execute if score @s light_green_pulled_timer matches 60.. run function light_green:mob/swamp_hunter/pull/clear

execute if entity @e[type=bogged, sort=nearest, limit=1, tag=light_green.swamp_hunter, tag=light_green.swamp_hunter_using_skill, distance=..2] at @s run function light_green:mob/swamp_hunter/pull/clear