scoreboard players add @s orange_bury_the_light_attack 1

execute if score @s orange_bury_the_light_attack matches 1..120 at @s run particle cloud ^ ^1.5 ^1 0.1 0.1 0.1 0.3 1

execute if score @s orange_bury_the_light_attack matches ..110 run execute unless predicate thecookieorange:bury_the_light/holding_bury_the_light run scoreboard players set @s orange_bury_the_light_attack 0

# =================================================================

execute if score @s orange_bury_the_light_attack matches 118 run playsound cookieorange_res:custom.bury_the_light_active ambient @s ^ ^ ^ 0.4 1


execute if score @s orange_bury_the_light_attack matches 120..121 run scoreboard players set @s orange_bury_the_light_cd -700

execute if score @s orange_bury_the_light_attack matches 1..120 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=4..8] at @s run particle firework ~ ~2 ~ 0.0 1.5 0.0 0.001 2
execute if score @s orange_bury_the_light_attack matches 120 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=4..8, limit=2] at @s run summon lightning_bolt ^ ^ ^
execute if score @s orange_bury_the_light_attack matches 120 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=4..8, limit=2] at @s run function thecookieorange:item/bury_the_light/summon_wind_brust

# execute if score @s orange_bury_the_light_attack matches 120 run item modify entity @s weapon.mainhand thecookieorange:item/bury_the_light_cooldown

execute if score @s orange_bury_the_light_attack matches 120..140 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=8..12] at @s run particle firework ~ ~2 ~ 0.0 1.5 0.0 0.001 2
execute if score @s orange_bury_the_light_attack matches 140 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=8..12, limit=2] at @s run summon lightning_bolt ^ ^ ^
execute if score @s orange_bury_the_light_attack matches 140 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=8..12, limit=2] at @s run function thecookieorange:item/bury_the_light/summon_wind_brust

execute if score @s orange_bury_the_light_attack matches 140..160 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=12..16] at @s run particle firework ~ ~2 ~ 0.0 1.5 0.0 0.001 2
execute if score @s orange_bury_the_light_attack matches 160 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=12..16, limit=2] at @s run summon lightning_bolt ^ ^ ^
execute if score @s orange_bury_the_light_attack matches 160 run execute positioned ^ ^ ^ as @e[type=#minecraft:hostile, distance=12..16, limit=2] at @s run function thecookieorange:item/bury_the_light/summon_wind_brust

# execute if score @s orange_bury_the_light_attack matches 200 run give @a cookie

execute if score @s orange_bury_the_light_attack matches 120 run effect give @s strength 6 1
execute if score @s orange_bury_the_light_attack matches 120 run effect give @s resistance 6 1


execute if score @s orange_bury_the_light_attack matches 161.. run scoreboard players set @s orange_bury_the_light_attack 0