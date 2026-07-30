scoreboard objectives add cyan_timer dummy
scoreboard objectives add cyan_debug dummy

scoreboard objectives add cyan_pos_x dummy
scoreboard objectives add cyan_pos_y dummy
scoreboard objectives add cyan_pos_z dummy

scoreboard objectives add cyan_number_value dummy

scoreboard objectives add cyan_player_air_timer dummy

# 建立一個用來儲存「顯示秒數」的計分板
scoreboard objectives add cyan_air_sec dummy
scoreboard objectives add cyan_constants dummy
scoreboard players set #20 cyan_constants 20

scoreboard objectives add cyan_number_dark_matter_sweep dummy

scoreboard objectives add cyan_pick_by_space_twister dummy

scoreboard objectives add cyan_death_reset deathCount
scoreboard objectives add cyan_zero_heart health

scoreboard objectives add cyan_void_green dummy
scoreboard objectives add cyan_void_purple dummy

# 外星人的
scoreboard objectives add cyan_air_lost dummy

scoreboard objectives add cyan_id dummy
scoreboard objectives add cyan_used_potion used:lingering_potion


team add cyan_space_team
team add cyan_dark_matter_team
team add cyan_abyssal_dark_matter_team
team add cyan_dark_matter

team modify cyan_space_team color dark_aqua
team modify cyan_dark_matter_team color dark_green
team modify cyan_abyssal_dark_matter_team color dark_purple
team modify cyan_dark_matter color dark_gray