scoreboard players add @s brown_attack 1

function brown:saboteur/dash_attack/dash with entity @s data

particle angry_villager ~ ~1 ~ 0.8 0.8 0.8 0 20

execute unless block ~ ~0.5 ~ #minecraft:passable run function brown:saboteur/dash_attack/dash_end
execute if score @s brown_attack matches 10.. run function brown:saboteur/dash_attack/dash_end

execute as @e[tag=!brown.steampunk, distance=..2.5, type=!#minecraft:not_mob] run damage @s 12 mob_attack by @e[limit=1, sort=nearest, tag=brown.saboteur, type=piglin_brute] from @e[limit=1, sort=nearest, tag=brown.saboteur, type=piglin_brute]