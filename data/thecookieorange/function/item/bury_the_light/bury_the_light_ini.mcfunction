execute if score @s orange_bury_the_light_timer matches 1.. run function thecookieorange:item/bury_the_light/bury_the_light_attack

execute if score @s orange_bury_the_light_cd matches 0..120 run execute at @s run particle firework ~1 ~ ~-1 0.0 0.0 0.0 0.01 1 normal
execute if score @s orange_bury_the_light_cd matches 0..120 run execute at @s run particle firework ~1 ~ ~1 0.0 0.0 0.0 0.01 1 normal
execute if score @s orange_bury_the_light_cd matches 0..120 run execute at @s run particle firework ~-1 ~ ~1 0.0 0.0 0.0 0.01 1 normal
execute if score @s orange_bury_the_light_cd matches 0..120 run execute at @s run particle firework ~-1 ~ ~-1 0.0 0.0 0.0 0.01 1 normal