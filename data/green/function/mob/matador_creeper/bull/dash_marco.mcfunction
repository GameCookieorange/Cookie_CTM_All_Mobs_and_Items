# $tellraw @a "傳送座標為: $(x), $(y), $(z)"
$execute at @s facing $(x) ~ $(z) run tp @s ^ ^0.01 ^0.5 ~ ~

execute as @s at @s run particle gust ~ ~1 ~ 0.6 0.8 0.6 0 1