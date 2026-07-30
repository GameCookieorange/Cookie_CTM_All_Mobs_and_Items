scoreboard players add @s final_timer 1

execute if score @s final_timer matches 1 run data modify entity @s Rotation set from entity @e[tag=final.sonic_killer_kail,  type=armor_stand, sort=nearest, limit=1] Rotation

execute if score @s final_timer matches 2.. run tp @s ^ ^ ^1.2

execute as @e[type=!#minecraft:not_mob, tag=!final.sonic_shooter, team=!final_boss_team, distance=..2.2] at @s run damage @s 12 mob_attack_no_aggro by @e[type=armor_stand, tag=final.sonic_killer_kail, limit=1, sort=nearest]

# execute as @e[type=!#minecraft:not_mob, tag=!final.sonic_shooter, team=!final_boss_team, distance=..2.2] at @s run damage @s 6 sonic_boom by @e[type=armor_stand, tag=final.sonic_killer_kail, limit=1, sort=nearest]

execute as @e[type=#minecraft:throwable_or_projectile, tag=!final.sonic_shooter, team=!final_boss_team, distance=..2.2] at @s run function final:mob/sonic_shooter/knockback

execute as @e[type=warden, team=!final_boss_team, distance=..2.2] at @s run damage @s 200 mob_attack_no_aggro by @e[type=armor_stand, tag=final.sonic_killer_kail, limit=1, sort=nearest]

particle sonic_boom ~ ~ ~ 0 0 0 0 1 force
execute if score @s final_timer matches 40.. at @s run kill @s