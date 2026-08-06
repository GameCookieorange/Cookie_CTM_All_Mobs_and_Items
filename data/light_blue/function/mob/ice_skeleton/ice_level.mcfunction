scoreboard players add @s light_blue_ice_level_cooldown 1

execute at @s run particle dust{color:[0.831,0.976,1.000],scale:1.5} ~ ~ ~ 1.5 1.5 1.5 0 5 normal

execute if score @s light_blue_ice_level matches 2..3 run effect give @s minecraft:slowness 1 0
execute if score @s light_blue_ice_level matches 4..5 run effect give @s minecraft:slowness 1 1
execute if score @s light_blue_ice_level matches 4.. run effect give @s minecraft:mining_fatigue 1 0
execute if score @s light_blue_ice_level matches 6.. run effect give @s minecraft:slowness 1 4
execute if score @s light_blue_ice_level matches 7.. at @s run damage @s 10 freeze
execute if score @s light_blue_ice_level matches 7.. at @s run playsound block.glass.break master @a ~ ~ ~ 1 1 1
execute if score @s light_blue_ice_level matches 7.. at @s run particle block_crumble{block_state:blue_ice} ~ ~ ~ 1 1 1 0.1 100 normal

execute if score @s light_blue_ice_level matches 7.. run scoreboard players remove @s light_blue_ice_level 1

execute if score @s light_blue_ice_level_cooldown matches 100 run scoreboard players remove @s light_blue_ice_level 1

execute if score @s light_blue_ice_level_cooldown matches 100.. run scoreboard players set @s light_blue_ice_level_cooldown 0

#===============================================================================
