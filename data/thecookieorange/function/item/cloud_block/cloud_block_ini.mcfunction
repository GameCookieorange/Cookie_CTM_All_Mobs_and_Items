execute as @s at @s run summon marker ~ ~ ~ {Tags:["cloud_potion_tracker","cloud_new"]}

execute as @s at @s run ride @e[tag=cloud_new,limit=1] mount @s

tag @e[type=lingering_potion] add processed_cloud_potion
tag @e[tag=cloud_new] remove cloud_new