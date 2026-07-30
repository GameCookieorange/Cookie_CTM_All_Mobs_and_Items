execute as @s[team=blue_torpedo] run team leave @s
execute if entity @s[tag=!blue.is_following] run tag @s add blue.is_following

scoreboard players add @s blue_danger_clk 1

execute if score @s blue_danger_clk matches 2 run execute at @s run playsound cookieorange_res:custom.mob.blue.missile hostile @a ~ ~ ~ 0.6 1.2

execute if score @s blue_danger_clk matches 60.. run scoreboard players set @s blue_danger_clk 0

execute unless score @s blue_near_clk matches 0 run scoreboard players set @s blue_near_clk 0

tp @s ^ ^ ^0.12 facing entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, limit=1, sort=nearest]

execute as @s[nbt={HurtTime:9s}] at @s run scoreboard players add @s blue_timer 700
execute unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ spawner run function blue:mob/squid/change_to_follow/explode

# give @a apple