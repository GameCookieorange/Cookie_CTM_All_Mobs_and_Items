scoreboard players add @s white_timer 1

execute if score @s white_timer matches 20 run effect give @s instant_damage 1 0
execute if score @s white_timer matches 20 at @s run playsound entity.creaking.step hostile @a

execute if score @s white_timer matches 20 run execute at @s run particle happy_villager ~ ~3 ~ 0.5 0.5 0.5 0.1 20

execute if score @s white_timer matches 61.. run scoreboard players set @s white_timer 1