scoreboard players add @s yellow_debug 1

execute if score @s yellow_debug matches 1 at @s run particle minecraft:enchant ~ ~1 ~ 1 1 1 1 120 normal
execute if score @s yellow_debug matches 1 at @s run playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 0.8
execute if score @s yellow_debug matches 1 at @s run playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 1 1.2



execute if score @s yellow_debug matches 120..180 at @s run particle smoke ~ ~1 ~ 0.1 0.1 0.1 0.5 10 normal
execute if score @s yellow_debug matches 180.. run function yellow:mob/pharaoh/disappear

scoreboard players add @s yellow_timer 1
execute if score @s yellow_timer matches 10 if entity @e[distance=..4, type=#minecraft:attack_entity] run function yellow:mob/pharaoh/attack

execute if score @s yellow_timer matches 20 run data merge entity @s {Pose:{Body:[0f,0f,0f],RightArm:[315f,287f,23f]},Rotation:[46,0]}

execute if score @s yellow_timer matches 30.. run scoreboard players set @s yellow_timer 0

tp @s ^ ^ ^0.2 facing entity @e[type=#minecraft:attack_entity, limit=1, sort=nearest, distance=..30] feet

execute at @s run particle dust{color:[0.851,0.251,1.000],scale:1.4} ~ ~1 ~ 0.5 0.5 0.5 0.5 10 normal
