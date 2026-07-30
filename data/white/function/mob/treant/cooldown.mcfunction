scoreboard players add @s white_debug 1

execute if score @s white_debug matches 35 at @s run playsound entity.creaking.step hostile @a

execute if score @s white_debug matches 70 at @s run playsound entity.creaking.step hostile @a

execute if score @s white_debug matches 100.. run tag @s remove white_been_attacked