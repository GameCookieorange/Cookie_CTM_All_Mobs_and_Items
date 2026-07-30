tag @s remove yellow.thirsty
execute at @s unless score @s yellow_player_death matches 1.. run playsound entity.witch.drink master @s ~ ~ ~ 1 1
scoreboard players set @s yellow_become_thirsty 0
scoreboard players set @s yellow_thirsty_level 0
scoreboard players set @s yellow_damage_timer 0
scoreboard players set @s yellow_player_death 0
advancement revoke @s only yellow:dry_attack
advancement revoke @s only yellow:drink_potion