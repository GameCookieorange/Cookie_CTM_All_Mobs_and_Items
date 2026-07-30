scoreboard players add @s light_gray_timer 1

execute if entity @e[type=!#not_mob, team=!light_gray_machine_team, distance=..2, sort=nearest, limit=1] run function light_gray:mob/shooter/bullet/damage

execute if score @s light_gray_timer matches 1 at @s run playsound block.mud_bricks.break hostile @a ~ ~ ~ 1.4 0.4

execute if score @s light_gray_timer matches 1 rotated as @n[type=skeleton, tag=light_gray.shooter, limit=1, sort=nearest] run tp @s ^ ^ ^ ~ ~

execute if score @s light_gray_timer matches 2.. run tp @s ^ ^ ^0.6

execute if score @s light_gray_timer matches 2.. run effect give @s glowing 1 1 true

execute unless block ~ ~ ~ #minecraft:passable run function light_gray:mob/shooter/bullet/break

execute if score @s light_gray_timer matches 2 at @s run particle small_flame ~ ~ ~ 0.05 0.05 0.05 0.2 15 normal

execute if score @s light_gray_timer matches 60.. run kill @s