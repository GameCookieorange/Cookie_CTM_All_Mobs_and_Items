execute as @e[tag=blue.naval_mine, distance=..10] run execute if score @s blue_debug matches ..999 run scoreboard players set @s blue_debug 1000

particle bubble ~ ~1 ~ 2 2 2 0.3 50 normal
data modify entity @s ignited set value true

scoreboard players add @s blue_timer 1

execute if score @s blue_timer matches 30 if entity @e[tag=blue.drowned_prowler_elite,distance=..12] at @s run execute as @e[tag=blue.drowned_prowler_elite ,distance=..10] run tag @s remove blue.indigo_prowler_invincible

execute if score @s blue_timer matches 30 at @s run scoreboard players set @e[tag=blue.drowned_prowler_elite,distance=..12] blue_debug 0