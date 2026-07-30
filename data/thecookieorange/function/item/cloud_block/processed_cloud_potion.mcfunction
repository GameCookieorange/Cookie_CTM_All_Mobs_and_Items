execute as @s at @s unless predicate thecookieorange:cloud_potion/throw_cloud_potion run summon marker ~ ~ ~ {Tags:["orange_bounce_pad"]}

execute at @s run particle minecraft:cloud ~ ~1 ~ 0.1 0.1 0.1 0.01 5

execute as @s unless predicate thecookieorange:cloud_potion/throw_cloud_potion run kill @s