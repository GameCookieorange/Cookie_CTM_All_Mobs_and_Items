scoreboard players add @s light_green_debug 1

execute if score @s light_green_debug matches 1 run data modify entity @s Rotation set from entity @e[tag=light_green.web_spider, type=spider, sort=nearest, limit=1] Rotation

execute if score @s light_green_debug matches 1.. run tp @s ^ ^ ^0.5

execute if score @s light_green_debug matches 100.. run kill @s


execute as @e[type=#minecraft:attack_entity, limit=1, sort=nearest, distance=..1.5] at @s run function light_green:mob/web_spider/damage

execute unless block ^ ^ ^2 #white:passable at @s run kill @s
execute unless block ^ ^ ^1 #white:passable at @s run kill @s

execute unless block ~ ~ ~ #white:passable at @s run kill @s

particle minecraft:item_cobweb ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal
playsound block.cobweb.break hostile @a ~ ~ ~ 0.5 1.2