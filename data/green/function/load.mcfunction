scoreboard objectives add green_timer dummy
scoreboard objectives add green_debug dummy
scoreboard objectives add green_attack dummy

scoreboard objectives add green_pos.x dummy
# scoreboard objectives add green_pos.y dummy
scoreboard objectives add green_pos.z dummy

scoreboard objectives add green_number_value dummy

team add green_party_creeper party_creeper
team add green_creeper_core
team add green_matador

team modify green_party_creeper color dark_green
team modify green_creeper_core color gold
team modify green_party_creeper friendlyFire true
team modify green_matador color red

scoreboard objectives add green_rejoin_party_creeper_cooldown dummy
