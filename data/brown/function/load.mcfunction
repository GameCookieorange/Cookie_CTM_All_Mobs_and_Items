scoreboard objectives add brown_timer dummy
scoreboard objectives add brown_debug dummy

scoreboard objectives add brown_clone_target dummy
scoreboard objectives add brown_clone_test dummy

scoreboard objectives add brown_hot_potato_timer dummy

scoreboard objectives add brown_attack dummy


scoreboard objectives add brown_pos.x dummy
scoreboard objectives add brown_pos.y dummy
scoreboard objectives add brown_pos.z dummy

team add brown_steampunk
team modify brown_steampunk color dark_red

execute unless entity 2b83f9f7-a749-4e17-a49f-96cb8af47c83 run summon item_display ~ ~ ~ {UUID:[I;730069495,-1488368105,-1533045045,-1963688829],Tags:["brown.item_display_to_get_name"], NoGravity:1b, Invulnerable:1b}