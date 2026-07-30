scoreboard objectives add gray_timer dummy
scoreboard objectives add gray_debug dummy

scoreboard objectives add gray_value_number dummy


# ======================================== zombie_elite_initial

scoreboard objectives add gray_player_death_cooldown dummy
scoreboard players set @a gray_player_death_cooldown 0
scoreboard objectives add gray_player_death deathCount
scoreboard players set @a gray_player_death 0
tag @a remove gray.player_death
# ========================================

scoreboard objectives add gray_creeper_timer dummy

team add gray_floating_creeper
team add gray_falling_creeper
team modify gray_floating_creeper color gold
team modify gray_falling_creeper color dark_aqua

team add gray_cloud_mobs
team modify gray_cloud_mobs color dark_gray

team add gray_firmament_soul_lord
team modify gray_firmament_soul_lord color dark_red