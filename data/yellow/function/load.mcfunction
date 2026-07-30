scoreboard objectives add yellow_timer dummy
scoreboard objectives add yellow_debug dummy
scoreboard objectives add yellow_skill_timer dummy

scoreboard objectives add yellow_number_value dummy

scoreboard objectives add yellow_become_thirsty dummy
scoreboard objectives add yellow_thirsty_level dummy
scoreboard objectives add yellow_damage_timer dummy
scoreboard objectives add yellow_player_death deathCount
scoreboard players set @s yellow_player_death 0


scoreboard objectives add yellow_player_damage_time dummy

team add yellow_mirage
team modify yellow_mirage color yellow