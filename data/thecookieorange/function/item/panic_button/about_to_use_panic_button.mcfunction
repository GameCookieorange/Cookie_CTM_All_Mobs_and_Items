scoreboard players add @s about_to_use_panic_button 1


execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~ ~ ~1.5 0.1 0.1 0.1 0.1 3
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~ ~ ~-1.5 0.1 0.1 0.1 0.1 3
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~1.5 ~ ~ 0.1 0.1 0.1 0.1 3
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~-1.5 ~ ~ 0.1 0.1 0.1 0.1 3
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~1 ~ ~1 0.1 0.1 0.1 0.1 3
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~-1 ~ ~1 0.1 0.1 0.1 0.1 3
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~1 ~ ~-1 0.1 0.1 0.1 0.1 3
execute at @s run particle dust{color: [1.0, 0.0, 0.0], scale: 1.0} ~-1 ~ ~-1 0.1 0.1 0.1 0.1 3

execute if score @s about_to_use_panic_button matches 20..22 run execute at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0.5 20


# give @a cookie