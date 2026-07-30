scoreboard players add @s blue_debug 1

execute if score @s blue_debug matches 19 if entity @e[tag=blue.drowned_prowler_elite,distance=..8] at @s run execute as @e[tag=blue.drowned_prowler_elite ,distance=..8] run tag @s remove blue.indigo_prowler_invincible
execute if score @s blue_debug matches 19 at @s run scoreboard players set @e[tag=blue.drowned_prowler_elite,distance=..8] blue_debug 0

effect give @s invisibility 1 1 true

execute if score @s blue_debug matches 100.. run kill @s