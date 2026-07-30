scoreboard players add @s final_timer 1
scoreboard players add @s final_skill_timer 1

execute if score @s final_timer matches 1..10 at @s run tp @s ^ ^ ^ facing entity @e[type=!#minecraft:not_mob, team=!final_boss_team, distance=..40, sort=nearest, limit=1] feet 
execute if score @s final_timer matches 1..40 at @s run particle sculk_charge_pop ~ ~2 ~ 0.0 0.0 0.0 0.3 5 normal

execute if score @s final_timer matches 1..40 at @s run particle squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.3 8 normal

execute if score @s final_timer matches 0..40 if score @s final_skill_timer matches 5 at @s run summon marker ^ ^1 ^1.8 {Tags:["final.sonic_beam_marker_notice"]}
execute if score @s final_timer matches 0..40 if score @s final_skill_timer matches 5 at @s run summon marker ^1.5 ^1 ^0.6 {Tags:["final.sonic_beam_marker_notice"]}
execute if score @s final_timer matches 0..40 if score @s final_skill_timer matches 5 at @s run summon marker ^-1.5 ^1 ^0.6 {Tags:["final.sonic_beam_marker_notice"]}

execute if score @s final_timer matches 1 at @s run playsound entity.warden.sonic_charge hostile @a ~ ~ ~ 2 1.5

execute if score @s final_timer matches 20 at @s run playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 1 0.6

execute if score @s final_timer matches 30 at @s run playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 2 1

execute if score @s final_timer matches 40 at @s run playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 3 1.2

execute if score @s final_timer matches 40..120 if score @s final_skill_timer matches 5 at @s run summon marker ^ ^1 ^1.8 {Tags:["final.sonic_beam_marker"]}
execute if score @s final_timer matches 40..120 if score @s final_skill_timer matches 5 at @s run summon marker ^1.5 ^1 ^0.6 {Tags:["final.sonic_beam_marker"]}
execute if score @s final_timer matches 40..120 if score @s final_skill_timer matches 5 at @s run summon marker ^-1.5 ^1 ^0.6 {Tags:["final.sonic_beam_marker"]}

execute if score @s final_timer matches 40..120 if score @s final_skill_timer matches 5 at @s run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.7 0.4
execute if score @s final_timer matches 40..120 at @s run particle glow_squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.3 8 normal

execute if score @s final_skill_timer matches 8 at @s run scoreboard players set @s final_skill_timer 0
execute if score @s final_timer matches 160.. at @s run kill @s