execute store result score @s light_gray_number_value run random value 1..100

execute if score @s light_gray_number_value matches 1..30 if block ~ ~ ~ #light_gray:breakable run setblock ~ ~ ~ air destroy

kill @s