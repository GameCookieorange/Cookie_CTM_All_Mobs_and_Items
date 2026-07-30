scoreboard players add @s orange_sky_protector_timer 1

effect give @e[distance=3..5, type=phantom] wither 2 0 true 

# effect give @e[distance=6..8, type=#minecraft:hostile] glowing 1 0 true 
effect give @e[distance=..6, type=#minecraft:hostile] slowness 2 1 true

#10s

execute if score @s orange_sky_protector_timer matches 160 run execute positioned ~ ~ ~ at @e[distance=2..8, type=#minecraft:hostile, limit=2] run summon evoker_fangs ~ ~ ~

execute if score @s orange_sky_protector_timer matches 161.. run scoreboard players set @s orange_sky_protector_timer 0