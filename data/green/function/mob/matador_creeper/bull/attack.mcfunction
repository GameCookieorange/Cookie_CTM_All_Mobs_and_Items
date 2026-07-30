scoreboard players add @s green_attack 1

execute if score @s green_attack matches 40 run effect give @s minecraft:glowing 1 0 true
execute if score @s green_attack matches 40 at @s run playsound entity.ravager.roar hostile @a ~ ~ ~ 1 1

execute if score @s green_attack matches 40..60 run tp @s ^ ^ ^ facing entity @e[team=!green.party_creeper, type=!ravager, type=!#minecraft:not_mob, limit=1, sort=nearest] feet

execute if score @s green_attack matches 60 run execute as @s at @s run summon marker ^ ^ ^30 {Tags:["green.dash_point"]}

execute if score @s green_attack matches 60 run tag @s add green_bull_attacking

execute if score @s green_attack matches 60 run function green:mob/matador_creeper/bull/dash_start

execute if score @s green_attack matches 60 run kill @e[tag=green.dash_point, limit=1, sort=nearest]

execute if entity @s[tag=green_bull_attacking] unless block ^ ^3 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall
execute if entity @s[tag=green_bull_attacking] unless block ^ ^2 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall
execute if entity @s[tag=green_bull_attacking] unless block ^ ^1 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall
execute if entity @s[tag=green_bull_attacking] unless block ^1 ^3 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall
execute if entity @s[tag=green_bull_attacking] unless block ^1 ^2 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall
execute if entity @s[tag=green_bull_attacking] unless block ^1 ^1 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall
execute if entity @s[tag=green_bull_attacking] unless block ^-1 ^3 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall
execute if entity @s[tag=green_bull_attacking] unless block ^-1 ^2 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall
execute if entity @s[tag=green_bull_attacking] unless block ^-1 ^1 ^1.5 #minecraft:passable run tag @s add bull_hit_the_wall


execute if entity @s[tag=green_bull_attacking] run particle angry_villager ~ ~ ~ 1 1 1 0.8 5
execute if score @s[tag=green_bull_attacking] green_attack matches 61..100 run function green:mob/matador_creeper/bull/dash_marco with entity @s data
execute if score @s[tag=green_bull_attacking] green_attack matches 61..99 run execute as @e[tag=!green.matador_creeper, distance=..3, type=!ravager] at @s run damage @s 8 minecraft:mob_attack_no_aggro by @n[tag=green.bull, sort=nearest]

execute if entity @s[tag=bull_hit_the_wall] run function green:mob/matador_creeper/bull/stop_running

# execute if score @s green_attack matches 100 run give @a diamond
execute if score @s green_attack matches 100 run tag @s remove green_bull_attacking
execute if score @s green_attack matches 102 run scoreboard players add @s green_debug 1
execute if score @s green_attack matches 105.. run scoreboard players set @s green_attack 20

execute if score @s green_debug matches 3.. run tag @s remove green.attack_bull