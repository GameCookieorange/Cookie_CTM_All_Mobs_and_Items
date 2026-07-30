
tp @s[tag=purple.in_wall] ^ ^0.9 ^0.8 facing entity @p eyes

# setblock ~ ~ ~ air destroy
# execute at @s unless block ~ ~1 ~ #minecraft:passable unless block ~ ~1 ~ #minecraft:unbreakable run setblock ~ ~1 ~ air destroy
execute as @s[tag=purple.in_wall] run effect clear
data modify entity @s[tag=purple.in_wall, tag=!purple.got_slience] Silent set value false
execute as @s[tag=purple.in_wall] run tag @s remove purple.in_wall
