execute store result score @s cyan_number_value run random value 0..2
# scoreboard players set @s cyan_number_value 0

execute if score @s cyan_number_value matches 0 run function cyan:mob/dark_matter/skill/attack/one
execute if score @s cyan_number_value matches 1 run function cyan:mob/dark_matter/skill/attack/two
execute if score @s cyan_number_value matches 2 run function cyan:mob/dark_matter/skill/attack/three

scoreboard players reset @s cyan_number_value