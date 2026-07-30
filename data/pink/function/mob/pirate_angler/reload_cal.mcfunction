scoreboard players add @s pink_debug 1

execute if score @s pink_debug matches 60.. run scoreboard players set @s pink_debug 60

execute if score @s pink_debug matches 60 if entity @e[tag=pink.pirate_angler, type=vindicator, distance=..2.5] run function pink:mob/pirate_angler/reset