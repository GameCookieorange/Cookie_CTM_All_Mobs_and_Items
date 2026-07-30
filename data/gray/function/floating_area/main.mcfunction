# 1. 漂浮效果：對處於中心 16x16x16 區域內的玩家施加效果
execute positioned ~-15 ~-15 ~-15 as @a[dx=30,dy=30,dz=30] run effect give @s minecraft:slow_falling 3 3 true
execute positioned ~-15 ~-15 ~-15 as @a[dx=30,dy=30,dz=30] run effect give @s minecraft:jump_boost 1 5 true
# execute positioned ~-15 ~-15 ~-15 as @a[dx=30,dy=30,dz=30] run effect give @s minecraft:night_vision 11 1 true
execute positioned ~-15 ~-15 ~-15 as @a[dx=30,dy=30,dz=30] at @s run particle cloud ~ ~ ~ 0.4 0.4 0.4 0.01 1

function thecookieorange:floating_area/particles

# execute if entity @a[distance=..38] run function thecookieorange:floating_area/main
