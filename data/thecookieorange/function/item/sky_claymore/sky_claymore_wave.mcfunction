execute as @e[tag=sky_wave_weak] at @s run tp @s ^ ^ ^0.5 ~ ~
execute as @e[tag=sky_wave_heavy] at @s run tp @s ^ ^ ^0.875 ~ ~

execute as @e[tag=sky_wave] at @s run scoreboard players add @s orange_sky_claymore_wave 1

execute as @e[tag=sky_wave_weak] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[0.569,0.569,1.000],scale:1} ^-0.75 ^ ^-0.75 0 0.1 0 0.001 1 force
execute as @e[tag=sky_wave_weak] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[0.569,0.569,1.000],scale:1} ^0.75 ^ ^-0.75 0 0.1 0 0.001 1 force
execute as @e[tag=sky_wave_weak] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[0.569,0.569,1.000],scale:1} ^-0.5 ^ ^-0.5 0 0.1 0 0.001 1 force
execute as @e[tag=sky_wave_weak] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[0.569,0.569,1.000],scale:1} ^0.5 ^ ^-0.5 0 0.1 0 0.001 1 force
execute as @e[tag=sky_wave_weak] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[0.569,0.569,1.000],scale:1} ^-0.25 ^ ^-0.25 0 0.1 0 0.001 1 force
execute as @e[tag=sky_wave_weak] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[0.569,0.569,1.000],scale:1} ^0.25 ^ ^-0.25 0 0.1 0 0.001 1 force
execute as @e[tag=sky_wave_weak] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[0.569,0.569,1.000],scale:1} ^ ^ ^ 0 0.1 0 0.01 1 force


execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^-0.75 ^ ^-0.75 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^0.75 ^ ^-0.75 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^ ^ ^ 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^0.5 ^ ^-0.5 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^-0.5 ^ ^-0.5 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^0.25 ^ ^-0.25 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^-0.25 ^ ^-0.25 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^1 ^ ^-1 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^-1 ^ ^-1 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^1.25 ^ ^-1.25 0.1 0.1 0.1 0.01 3 force
execute as @e[tag=sky_wave_heavy] at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[1.0,0.4,0.0],scale:0.8} ^-1.25 ^ ^-1.25 0.1 0.1 0.1 0.01 3 force



execute as @e[tag=sky_wave_weak] at @s unless block ~ ~ ~ #minecraft:replaceable run kill @s

execute as @e[scores={orange_sky_claymore_wave=140..}, tag=sky_wave_weak] run kill @s
execute as @e[scores={orange_sky_claymore_wave=40..}, tag=sky_wave_heavy] run kill @s

execute as @e[tag=sky_wave_weak] at @s run execute as @e[type=#minecraft:hostile,distance=..2] at @s run particle angry_villager ~ ~1 ~ 0.0 0.1 0.0 0.01 2
execute as @e[tag=sky_wave_heavy] at @s run execute as @e[type=#minecraft:hostile, distance=..4] at @s run particle angry_villager ~ ~1 ~ 0.0 0.1 0.0 0.01 2

execute as @e[tag=sky_wave_weak] at @s as @e[type=#minecraft:hostile,distance=..2] run damage @s 6 minecraft:player_attack by @p
execute as @e[tag=sky_wave_heavy] at @s as @e[type=#minecraft:hostile,distance=..4] run damage @s 10 minecraft:player_attack by @p