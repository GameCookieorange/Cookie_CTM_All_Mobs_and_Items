scoreboard objectives add green_timer dummy
scoreboard objectives add green_debug dummy
scoreboard objectives add green_attack dummy

scoreboard objectives add green_pos.x dummy
# scoreboard objectives add green_pos.y dummy
scoreboard objectives add green_pos.z dummy

scoreboard objectives add green_number_value dummy

team add green.party_creeper party_creeper
team add green.creeper_core

team modify green.creeper_core color gold
team modify green.party_creeper friendlyFire true