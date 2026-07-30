execute as @e[type=bogged, sort=nearest, limit=1, tag=light_green.swamp_hunter, tag=light_green.swamp_hunter_using_skill, distance=..2] at @s run tag @s remove light_green.swamp_hunter_using_skill

# give @a cookie
tag @s remove light_green.being_hooked

scoreboard players set @s light_green_pulled_timer 0

