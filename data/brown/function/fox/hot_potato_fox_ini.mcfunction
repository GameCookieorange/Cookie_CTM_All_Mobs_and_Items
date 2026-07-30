scoreboard players add @s brown_debug 1

execute if score @s brown_debug matches 10..15 if entity @p[distance=..10] run scoreboard players set @s brown_debug 16
execute if score @s brown_debug matches 10..15 unless entity @p[distance=..10] run scoreboard players set @s brown_debug 10

execute if score @s brown_debug matches 1..20 run effect give @s glowing 1 1 true

execute if score @s brown_debug matches 1..20 at @s run particle smoke ~ ~0.5 ~ 0.8 0.8 0.8 0 10 normal

execute if score @s brown_debug matches 40 run function brown:fox/give

execute if score @s brown_debug matches 2000.. run kill @s
