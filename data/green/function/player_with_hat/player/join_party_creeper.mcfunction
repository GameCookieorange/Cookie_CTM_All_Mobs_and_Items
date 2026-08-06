execute unless score @s green_rejoin_party_creeper_cooldown matches 1.. run function green:player_with_hat/player/is_join

execute if score @s green_rejoin_party_creeper_cooldown matches 1.. run function green:player_with_hat/player/not_join

execute as @a[tag=green.not_join_party_creeper] run tag @s remove green.not_join_party_creeper

execute if score @s green_rejoin_party_creeper_cooldown matches 1.. unless entity @e[tag=green.is_party_creeper, distance=..12] run scoreboard players remove @s green_rejoin_party_creeper_cooldown 1

execute if score @s green_rejoin_party_creeper_cooldown matches 1..199 if entity @e[tag=green.is_party_creeper, distance=..12] run scoreboard players add @s green_rejoin_party_creeper_cooldown 1