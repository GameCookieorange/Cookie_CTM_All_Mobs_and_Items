scoreboard players add @s cyan_pick_by_space_twister 1

execute if score @s cyan_pick_by_space_twister matches 10 run tp @s @e[type=marker, tag=cyan.space_twister_marker, limit=1, sort=nearest]

execute if score @s cyan_pick_by_space_twister matches 11 run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1

execute if entity @e[type=marker, tag=cyan.space_twister_marker, limit=1, sort=nearest, distance=..1.5] as @e[type=marker, tag=cyan.space_twister_marker, limit=1, sort=nearest, distance=..1.5] at @s run kill @s

execute if score @s cyan_pick_by_space_twister matches 11.. run function cyan:mob/space_twister/reset