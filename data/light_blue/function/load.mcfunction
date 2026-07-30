scoreboard objectives add light_blue_timer dummy
scoreboard objectives add light_blue_debug dummy
scoreboard objectives add light_blue_skill dummy

scoreboard objectives add light_blue_position_x dummy
scoreboard objectives add light_blue_position_y dummy
scoreboard objectives add light_blue_position_z dummy

scoreboard objectives add light_blue_number_value dummy

scoreboard objectives add light_blue_ice_level dummy
scoreboard objectives add light_blue_ice_level_cooldown dummy

scoreboard objectives add light_blue_player_deaths deathCount
scoreboard players set @a light_blue_player_deaths 0


team add light_blue_ice_creature
team modify light_blue_ice_creature color aqua