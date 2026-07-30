execute if predicate thecookieorange:3d_steady_talisman/holding_3d_steady_talisman run scoreboard players add @s orange_3d_steady_talisman_timer 1

effect give @s[scores={orange_3d_steady_talisman_timer=1500}] minecraft:absorption 5 0 true

execute if score @s orange_3d_steady_talisman_timer matches 1500.. run scoreboard players set @s orange_3d_steady_talisman_timer 0