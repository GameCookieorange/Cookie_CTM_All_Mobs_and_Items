tp @s ^ ^ ^1.4 facing entity @e[tag=orange.location, limit=1] feet 

# execute if score @s orange_timer matches 2.. run scoreboard players set @s orange_timer 0

scoreboard players add @s orange_timer 1
scoreboard players add @s orange_debug 1

execute if entity @a[distance=..3] at @s run effect give @a[distance=..3] darkness 5 1 true

execute if entity @a[distance=..3] at @s run effect give @a[distance=..3] nausea 8 1 true

execute at @s run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 10 5 force

execute if entity @e[tag=orange.location, type=marker, distance=..2] at @s run function orange:mob/bat/sonic_end


execute unless block ^ ^ ^1 #orange:passable at @s run function orange:mob/bat/sonic_end

execute if score @s orange_debug matches 150.. run function orange:mob/bat/sonic_end
