execute store result score @s yellow_number_value run random value 1..5

execute if score @s yellow_number_value matches 1 run function yellow:mob/mirage/switch/spawn_one
execute if score @s yellow_number_value matches 2 run function yellow:mob/mirage/switch/spawn_two
execute if score @s yellow_number_value matches 3 run function yellow:mob/mirage/switch/spawn_three
execute if score @s yellow_number_value matches 4 run function yellow:mob/mirage/switch/spawn_four
execute if score @s yellow_number_value matches 5 run function yellow:mob/mirage/switch/spawn_five

execute at @s run playsound entity.vex.charge hostile @a ~ ~ ~ 5 0.6

execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 5 1.2


execute at @s run spreadplayers ~ ~ 4 8 false @s


