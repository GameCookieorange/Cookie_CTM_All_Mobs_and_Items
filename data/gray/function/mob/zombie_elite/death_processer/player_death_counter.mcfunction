scoreboard players add @s gray_player_death_cooldown 1

execute if score @s gray_player_death_cooldown matches 1.. run tag @s add gray.player_death

execute if score @s[tag=gray.player_death] gray_player_death_cooldown matches 10.. run function gray:mob/zombie_elite/death_processer/player_ini
# give @a cookie