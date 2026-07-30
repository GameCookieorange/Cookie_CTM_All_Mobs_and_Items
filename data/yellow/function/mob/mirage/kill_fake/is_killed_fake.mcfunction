scoreboard players add @s yellow_player_damage_time 1
# give @a cookie
# execute if entity @s[tag=yellow.player_kill_fake] run say yes
execute if score @s yellow_player_damage_time matches 5 run function yellow:mob/mirage/kill_fake/remove

# hope you won't get this command
execute if score @s yellow_player_damage_time matches 10.. run scoreboard players set @s yellow_player_damage_time 0