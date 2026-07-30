# 分別提取 0=X, 1=Y, 2=Z 並存入獨立的鍵值
execute as @s unless block ~ ~-1 ~ #thecookieorange:solid_block run execute if block ~ ~ ~ #air run data modify storage thecookieorange:orange_data x set from entity @s Pos[0]
execute as @s unless block ~ ~-1 ~ #thecookieorange:solid_block run execute if block ~ ~ ~ #air run data modify storage thecookieorange:orange_data y set from entity @s Pos[1]
execute as @s unless block ~ ~-1 ~ #thecookieorange:solid_block run execute if block ~ ~ ~ #air run data modify storage thecookieorange:orange_data z set from entity @s Pos[2]


execute as @s[predicate=thecookieorange:coward_critic/wearing_coward_critic, predicate=thecookieorange:in_void] run function thecookieorange:item/coward_critic/tp_to_safe_pos with storage thecookieorange:orange_data