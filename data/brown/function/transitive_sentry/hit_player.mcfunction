execute store result score @s brown_teleport_value run random value 1..10

execute if score @s brown_teleport_value matches 6..10 run spreadplayers ~ ~ 1 10 true @s

execute if score @s brown_teleport_value matches 6..10 at @s run playsound entity.shulker.teleport hostile @a ~ ~ ~ 0.5 0.2

execute if score @s brown_teleport_value matches 6..10 at @s run particle cloud ~ ~ ~ 0.8 0.8 0.8 0. 10

# give @a apple

scoreboard players reset @s brown_teleport_value


advancement revoke @s only brown:sentry/hit_player