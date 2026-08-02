execute as @s[type=!chicken, predicate=!brown:is_sitting] run scoreboard players add @s brown_debug 1

execute if score @s[type=!chicken] brown_debug matches 1 run effect give @s glowing 10 1 true

execute if score @s[type=!chicken] brown_debug matches 100 run function brown:steam_supply/supply/explode

# =================================================

scoreboard players add @s[type=!chicken] brown_timer 1 
execute if score @s[type=!chicken] brown_timer matches 20 run function brown:steam_supply/supply/effect
execute if score @s[type=!chicken] brown_timer matches 150.. run scoreboard players set @s brown_timer 0

# =================================================

execute as @s[type=chicken] if predicate brown:is_on_ground run scoreboard players add @s brown_timer 1

execute if score @s[type=chicken, predicate=brown:is_vehicle] brown_timer matches 460 at @s run effect give @e[type=!chicken, distance=..2, limit=1] glowing 10 1 true

execute if score @s[type=chicken, predicate=brown:is_vehicle] brown_timer matches 600 run execute as @e[type=!chicken, distance=..2, tag=brown.steam_supply_item, limit=1] run function brown:steam_supply/supply/explode

execute if score @s[type=chicken] brown_timer matches 610 run function brown:steam_supply/supply/reset

# =================================================

scoreboard players add @s[type=chicken] brown_debug 1 

execute if score @s[type=chicken] brown_debug matches 10 run function brown:steam_supply/supply/random_tp

