execute as @s store result score @s brown_pos.x run data get entity @e[type=happy_ghast, sort=nearest, tag=brown.happy_supply, limit=1, distance=..30] Pos[0] 1
execute as @s store result score @s brown_number_value run random value -20..20
scoreboard players operation @s brown_pos.z += @s brown_number_value
execute as @s store result entity @s Pos[0] double 1 run scoreboard players get @s brown_pos.x


execute as @s store result score @s brown_pos.y run data get entity @e[type=happy_ghast, sort=nearest, tag=brown.happy_supply, limit=1, distance=..30] Pos[1] 1
execute as @s store result score @s brown_number_value run random value -4..4
scoreboard players operation @s brown_pos.y += @s brown_number_value
execute as @s store result entity @s Pos[1] double 1 run scoreboard players get @s brown_pos.y


execute as @s store result score @s brown_pos.z run data get entity @e[type=happy_ghast, sort=nearest, tag=brown.happy_supply, limit=1, distance=..30] Pos[2] 1
execute as @s store result score @s brown_number_value run random value -20..20
scoreboard players operation @s brown_pos.z += @s brown_number_value
execute as @s store result entity @s Pos[2] double 1 run scoreboard players get @s brown_pos.z

execute at @s run playsound entity.chicken.hurt hostile @a ~ ~ ~ 1 1.5

# give @a apple
