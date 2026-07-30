scoreboard players add @s final_timer 1

execute if score @s final_timer matches 1 run data modify entity @s Rotation set from entity @e[tag=final.sonic_killer_kail,  type=armor_stand, sort=nearest, limit=1] Rotation

execute if score @s final_timer matches 2.. run tp @s ^ ^ ^1.8

# execute as @e[type=!#minecraft:not_mob, tag=!final.sonic_shooter, team=!final_boss_team, distance=..2.2] at @s run damage @s 6 sonic_boom by @e[type=armor_stand, tag=final.sonic_killer_kail, limit=1, sort=nearest]

particle dust_color_transition{from_color:[0.306,1.000,0.859],to_color:[0.125,0.541,0.400],scale:2} ~ ~ ~ 0 0 0 0 1 normal

execute if score @s final_timer matches 40.. at @s run kill @s