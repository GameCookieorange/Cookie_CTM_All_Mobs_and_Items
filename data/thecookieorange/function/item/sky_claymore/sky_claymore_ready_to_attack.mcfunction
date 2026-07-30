execute if predicate thecookieorange:sky_claymore/is_using_sky_claymore run scoreboard players add @s orange_sky_claymore_attack 1

execute if score @s orange_sky_claymore_attack matches 1..60 run execute as @s at @s run particle dust_color_transition{from_color:[0.271,0.855,1.000],to_color:[0.569,0.569,1.000],scale:1} ^ ^ ^2 1 1 1 0.5 2 force

execute if score @s orange_sky_claymore_attack matches 60.. run function thecookieorange:item/sky_claymore/sky_claymore_heavy_attack

execute unless predicate thecookieorange:sky_claymore/is_using_sky_claymore run scoreboard players set @s orange_sky_claymore_attack 0
execute unless predicate thecookieorange:sky_claymore/is_using_sky_claymore run function thecookieorange:item/sky_claymore/sky_claymore_weak_attack



