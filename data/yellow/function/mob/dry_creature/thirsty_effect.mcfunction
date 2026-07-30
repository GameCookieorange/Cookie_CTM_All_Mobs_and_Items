execute if score @s yellow_thirsty_level matches 1.. at @s run particle ash ~ ~1 ~ 0.8 0.8 0.8 0.01 5 force

execute if score @s yellow_thirsty_level matches 2..5 run effect give @s slowness 1 0 false
execute if score @s yellow_thirsty_level matches 2.. at @s run particle ash ~ ~1 ~ 0.8 0.8 0.8 0.01 10 force

execute if score @s yellow_thirsty_level matches 4..5 run effect give @s weakness 1 0 false

execute if score @s yellow_thirsty_level matches 6.. run effect give @s weakness 1 1 false
execute if score @s yellow_thirsty_level matches 6.. run effect give @s slowness 1 2 false
execute if score @s yellow_thirsty_level matches 6.. at @s run particle ash ~ ~1 ~ 0.8 0.8 0.8 0.01 30 force
