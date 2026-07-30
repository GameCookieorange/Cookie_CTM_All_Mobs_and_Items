scoreboard players set @s light_blue_ice_level 0
scoreboard players set @s light_blue_ice_level_cooldown 0

execute at @s run particle flame ~ ~1 ~ 0.5 0.5 0.5 0.5 50 normal
execute at @s run playsound block.fire.extinguish master @a[distance=..6] ~ ~ ~ 0.4 0.6 1