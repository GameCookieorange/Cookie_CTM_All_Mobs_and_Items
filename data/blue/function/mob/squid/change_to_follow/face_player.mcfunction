scoreboard players add @s blue_timer 1
execute if entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..2.5] run function blue:mob/squid/change_to_follow/explode
execute if score @s blue_timer matches 600.. run function blue:mob/squid/change_to_follow/explode
# =======================================================================

execute as @s[nbt={HurtTime:9s}] at @s run scoreboard players add @s blue_timer 700
execute unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ spawner run function blue:mob/squid/change_to_follow/explode

# =======================================================================
# =======================================================================

execute unless entity @e[distance=..8.5, type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army] run tag @s remove blue.is_following

execute as @s if entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..8.5, limit=1, sort=nearest] run function blue:mob/squid/sound/danger_warning

execute as @s[tag=!blue.is_following] run execute unless entity @e[type=!#minecraft:not_mob, tag=!blue.ocean_army, team=!blue_ocean_army, distance=..8.5, limit=1, sort=nearest] run function blue:mob/squid/sound/near_warning
