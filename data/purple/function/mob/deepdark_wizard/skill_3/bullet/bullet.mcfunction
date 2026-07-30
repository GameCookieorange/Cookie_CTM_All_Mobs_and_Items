scoreboard players add @s purple_timer 1

execute at @s if score @s purple_timer matches 1 run tp @s ^ ^ ^ facing entity @e[limit=1,tag=purple.rot_marker,sort=nearest]

execute if score @s purple_timer matches 2..160 at @s run tp @s ^0.25 ^ ^ ~2 ~
execute if score @s purple_timer matches 1..60 at @s run particle dust_color_transition{from_color:[0.196,0.027,0.290],to_color:[0.737,0.533,0.890],scale:1.5} ~ ~1.75 ~ 0.1 0.1 0.1 0 10 normal
execute if score @s purple_timer matches 161..200 at @s run tp @s ^ ^ ^ ~ ~
execute if score @s purple_timer matches 61..300 at @s run particle dust_color_transition{from_color:[0.180,0.016,0.071],to_color:[0.890,0.043,0.157],scale:1.5} ~ ~1.75 ~ 0.1 0.1 0.1 0 10 normal
execute if score @s purple_timer matches 61 at @s run team join purple.not_being_snipe
execute if score @s purple_timer matches 201 at @s run playsound entity.wither.shoot hostile @a ~ ~ ~ 0.5 1
execute if score @s purple_timer matches 201..300 at @s run tp @s ^ ^ ^0.7

execute if entity @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5, limit=1, sort=nearest] if score @s purple_timer matches 60.. run function purple:mob/deepdark_wizard/skill_3/bullet/effect

execute if score @s purple_timer matches 300.. run kill @s