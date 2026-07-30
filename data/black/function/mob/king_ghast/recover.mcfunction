# give @a cookie
execute at @s run playsound entity.warden.roar hostile @a ~ ~ ~ 8 0.4
execute at @s run playsound entity.warden.roar hostile @a ~ ~ ~ 8 0.2
effect give @s instant_health 1 150 true
scoreboard players add @s black_king_ghast_life 1