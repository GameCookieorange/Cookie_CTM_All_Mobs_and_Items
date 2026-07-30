scoreboard players add @s purple_debug 1
particle dust_color_transition{from_color:[0.067,0.000,0.180],to_color:[0.325,0.059,0.502],scale:2} ~ ~ ~ 0.2 0.2 0.2 0 5 force

execute if entity @e[sort=nearest, limit=1, tag=purple.phantom_sniper, tag=!purple.got_silence, distance=..3] if score @s purple_debug matches 1 at @s run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 1 2
execute if entity @e[sort=nearest, limit=1, tag=purple.phantom_sniper, tag=!purple.got_silence, distance=..3] if score @s purple_debug matches 1 at @s run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 1 1
execute if entity @e[sort=nearest, limit=1, tag=purple.phantom_sniper, tag=!purple.got_silence, distance=..3] if score @s purple_debug matches 1 at @s run playsound entity.wither.hurt hostile @a ~ ~ ~ 1 0.5
execute if score @s purple_debug matches 1 run data modify entity @s Owner set from entity @e[type=stray, limit=1, sort=nearest, tag=purple.phantom_sniper] UUID

execute if score @s[tag=purple.sniper_arrow] purple_debug matches 1 at @s rotated as @e[type=stray, limit=1, sort=nearest, tag=purple.phantom_sniper] run tp @s ~ ~ ~ ~ ~

execute if score @s purple_debug matches 1 if entity @e[tag=!purple.wall_crossing, tag=!purple.phantom_sniper, distance=..60, type=!#not_mob, nbt={active_effects:[{id:"minecraft:glowing"}]}] run function purple:mob/phantom_sniper/caculation_fast
execute if score @s purple_debug matches 1 unless entity @e[tag=!purple.wall_crossing, tag=!purple.phantom_sniper, distance=..60, type=!#not_mob, nbt={active_effects:[{id:"minecraft:glowing"}]}] run function purple:mob/phantom_sniper/caculation


execute if score @s purple_debug matches 100.. run kill @s