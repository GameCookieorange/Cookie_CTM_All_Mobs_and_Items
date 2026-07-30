execute as @s[tag=blue.is_following] run tag @s remove blue.is_following

execute as @s[team=!blue_torpedo] run team join blue_torpedo

scoreboard players add @s blue_near_clk 1

execute if score @s blue_near_clk matches 2 run execute at @s run playsound cookieorange_res:custom.mob.blue.missile hostile @a ~ ~ ~ 0.2 1

execute if score @s blue_near_clk matches 70.. run scoreboard players set @s blue_near_clk 0

execute unless score @s blue_danger_clk matches 0 run scoreboard players set @s blue_danger_clk 0

tp @s ^ ^ ^0.18

execute as @s[nbt={HurtTime:9s}] at @s run scoreboard players add @s blue_timer 700
execute unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ spawner run function blue:mob/squid/change_to_follow/explode
