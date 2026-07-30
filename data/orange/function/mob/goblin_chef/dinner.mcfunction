scoreboard players add @s orange_debug 1
scoreboard players add @s orange_timer 1


execute if predicate orange:is_throwing run scoreboard players set @s orange_debug 5

execute unless predicate orange:is_throwing run effect give @e[distance=..3, team=orange_goblin] absorption 30 1
execute unless predicate orange:is_throwing run effect give @e[distance=..3, team=orange_goblin] slowness 1 1

execute unless predicate orange:is_throwing run effect give @a[distance=..3] nausea 8 1
execute unless predicate orange:is_throwing run effect give @a[distance=..3] slowness 8 1

execute unless predicate orange:is_throwing run particle minecraft:dust_plume ~ ~ ~ 0.8 0 0.8 0.05 10 normal
execute unless predicate orange:is_throwing run particle minecraft:composter ~ ~ ~ 0.8 0 0.8 0.05 15 normal

execute unless predicate orange:is_throwing if entity @e[distance=..3, team=orange_goblin] run scoreboard players add @s orange_debug 5
execute if score @s orange_timer matches 2 unless predicate orange:is_throwing if entity @e[distance=..3, team=orange_goblin] run execute as @e[distance=..3, team=orange_goblin] at @s run playsound minecraft:entity.generic.eat hostile @a ~ ~ ~ 0.6 0.7
execute unless predicate orange:is_throwing if entity @e[distance=..3, team=orange_goblin] run execute as @e[distance=..3, team=orange_goblin] at @s run particle minecraft:witch ~ ~1.5 ~ 0 0.2 0 0.01 1 normal

execute if score @s orange_timer matches 4.. run scoreboard players set @s orange_timer 0
execute if score @s orange_debug matches 200.. run kill @s