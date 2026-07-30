scoreboard players add @s cyan_debug 1
particle portal ~ ~ ~ 0.5 0.5 0.5 0.01 5 normal

execute if score @s cyan_debug matches 1 run function cyan:mob/gray_alien/count_pos

execute if score @s cyan_debug matches 2 if block ~ ~ ~ air run particle gust ~ ~ ~ 1 1 1 0.01 1
execute if score @s cyan_debug matches 2 if block ~ ~ ~ air run setblock ~ ~ ~ white_stained_glass destroy
execute if score @s cyan_debug matches 3..49 unless block ~ ~ ~ white_stained_glass run kill @s


execute if score @s cyan_debug matches 50 if block ~ ~ ~ white_stained_glass run particle gust ~ ~ ~ 1 1 1 0.01 3
execute if score @s cyan_debug matches 50 if block ~ ~ ~ white_stained_glass run setblock ~ ~ ~ gray_stained_glass destroy
execute if score @s cyan_debug matches 51..99 unless block ~ ~ ~ gray_stained_glass run kill @s


execute if score @s cyan_debug matches 100 if block ~ ~ ~ gray_stained_glass run particle gust ~ ~ ~ 1 1 1 0.01 5
execute if score @s cyan_debug matches 100 if block ~ ~ ~ gray_stained_glass run setblock ~ ~ ~ black_stained_glass destroy
execute if score @s cyan_debug matches 101..149 unless block ~ ~ ~ black_stained_glass run kill @s


execute if score @s cyan_debug matches 150 run function cyan:mob/gray_alien/explosion