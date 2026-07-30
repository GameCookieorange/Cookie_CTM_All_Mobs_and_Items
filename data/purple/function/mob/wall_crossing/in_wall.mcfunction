
data modify entity @s[tag=!purple.in_wall] Silent set value true
effect give @s glowing 1 1 true
effect give @s resistance 1 4 true
execute at @s[tag=!purple.got_silence] run playsound block.stone.break hostile @a ~ ~ ~
execute at @s run particle block_crumble{block_state:stone} ~ ~ ~ 0.5 0.5 0.5 0.2 3
tp @s ^ ^0.05 ^0.085 facing entity @e[type=#minecraft:attack_entity, sort=nearest, limit=1] eyes

execute as @s[tag=!purple.in_wall] run tag @s add purple.in_wall