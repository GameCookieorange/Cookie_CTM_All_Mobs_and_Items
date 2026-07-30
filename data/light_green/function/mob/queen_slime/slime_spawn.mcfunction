scoreboard players add @s light_green_debug 1

# give @a cookie

execute unless block ~ ~-1 ~ air at @s run function light_green:mob/queen_slime/random_spawn

execute if score @s light_green_debug matches 100.. run function light_green:mob/queen_slime/random_spawn
