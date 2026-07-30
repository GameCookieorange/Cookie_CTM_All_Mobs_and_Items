scoreboard players add @s orange_purple_cheer_baton 1

execute as @s[scores={orange_purple_cheer_baton=10..15}] at @s if entity @a[distance=2..9] run scoreboard players set @s orange_purple_cheer_baton 18

execute as @s at @s if score @s orange_purple_cheer_baton matches 15 run scoreboard players set @s orange_purple_cheer_baton 0
# execute as @s at @s if score @s orange_purple_cheer_baton matches 15 run tag @s remove is_fan

execute as @s at @s if score @s orange_purple_cheer_baton matches 20 run effect give @a[distance=2..9] regeneration 8 0
execute as @s at @s if score @s orange_purple_cheer_baton matches 20 run effect give @a[distance=2..9] resistance 8 0

execute as @s[scores={orange_purple_cheer_baton=20}] at @s run playsound cookieorange_res:custom.purple_cheer_baton ambient @a[distance=2..9] ~ ~ ~ 0.5 1

execute as @s[scores={orange_purple_cheer_baton=20..25}] at @s run execute as @a[distance=2..9] at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 1 40

execute if score @s orange_purple_cheer_baton matches 800 run tag @s remove is_fan

execute if score @s orange_purple_cheer_baton matches 800 run scoreboard players set @s orange_purple_cheer_baton 0
