execute at @s run summon falling_block ~ ~3 ~ {BlockState:{Name:"minecraft:slime_block"},Time:1,CancelDrop:1b,Tags:["light_green.slime_spawn"]}

execute as @e[tag=light_green.slime_spawn, limit=1, sort=nearest, type=minecraft:falling_block] run ride @s mount @e[type=slime, tag=light_green.queen_slime, limit=1, sort=nearest]