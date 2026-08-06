execute unless predicate green:is_sitting unless block ~ ~-0.2 ~ #minecraft:passable run scoreboard players add @s green_debug 1
execute unless predicate green:is_sitting unless block ~ ~-0.2 ~ #minecraft:passable run scoreboard players add @s green_timer 1


execute unless block ~ ~-0.2 ~ #minecraft:passable if score @s green_timer matches 1 run function green:mob/pinata_creeper/choose

execute if score @s green_timer matches 8.. run scoreboard players set @s green_timer 0

# give @a apple

execute if score @s green_debug matches 1.. run tp @s ^ ^ ^ ~10 ~

execute if score @s green_debug matches 2 run item replace entity @s armor.head with jack_o_lantern
execute if score @s green_debug matches 2 run data modify entity @s Marker set value true


execute unless block ~ ~-0.2 ~ #minecraft:passable if score @s green_debug matches 10 run function green:mob/pinata_creeper/crazy
execute unless block ~ ~-0.2 ~ #minecraft:passable if score @s green_debug matches 25 run function green:mob/pinata_creeper/crazy
execute unless block ~ ~-0.2 ~ #minecraft:passable if score @s green_debug matches 40 run function green:mob/pinata_creeper/crazy
execute unless block ~ ~-0.2 ~ #minecraft:passable if score @s green_debug matches 55 run function green:mob/pinata_creeper/crazy
execute unless block ~ ~-0.2 ~ #minecraft:passable if score @s green_debug matches 70 run function green:mob/pinata_creeper/crazy

execute if score @s green_debug matches 200.. run function green:mob/pinata_creeper/reset

execute as @e[type=item, tag=green.pinata_food, distance=..4, sort=nearest] at @s run function green:mob/pinata_creeper/food