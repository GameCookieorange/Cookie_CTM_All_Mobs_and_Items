scoreboard players add @s light_blue_timer 1
scoreboard players add @s light_blue_debug 1

execute if score @s light_blue_timer matches 5 if entity @s[tag=light_blue.bullet_1] run function light_blue:mob/cracked_crystal/bullet/bullet_1
execute if score @s light_blue_timer matches 5 if entity @s[tag=light_blue.bullet_2] run function light_blue:mob/cracked_crystal/bullet/bullet_2
execute if score @s light_blue_timer matches 5 if entity @s[tag=light_blue.bullet_3] run function light_blue:mob/cracked_crystal/bullet/bullet_3
execute if score @s light_blue_timer matches 5 if entity @s[tag=light_blue.bullet_4] run function light_blue:mob/cracked_crystal/bullet/bullet_4

execute at @s run particle trial_spawner_detection_ominous ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal
execute at @s run particle snowflake ~ ~ ~ 0.05 0.05 0.05 0.01 2 normal

execute if entity @e[distance=..2, type=#minecraft:attack_entity] at @s run function light_blue:mob/cracked_crystal/bullet/damage

execute unless block ~ ~ ~ #light_blue:solid_block run function light_blue:mob/cracked_crystal/bullet/damage

execute if score @s light_blue_timer matches 5.. at @s run scoreboard players set @s light_blue_timer 0
execute if score @s light_blue_debug matches 400.. at @s run kill @s