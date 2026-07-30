scoreboard players add @s cyan_air_lost 1

execute if score @s cyan_player_air_timer matches 0.. run scoreboard players remove @s cyan_player_air_timer 5

# give @s cooked_chicken

execute if score @s cyan_air_lost matches 100.. run function cyan:mob/death_astronaut/reset