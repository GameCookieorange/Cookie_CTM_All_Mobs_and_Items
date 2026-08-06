execute store result score @s green_number_value run random value 0..50

execute at @s run particle dust_pillar{block_state:"minecraft:diamond_block"} ~ ~ ~ 0 0.8 0 0.5 10 normal
execute at @s run particle dust_pillar{block_state:"minecraft:gold_block"} ~ ~ ~ 0 0.8 0 0.5 10 normal
execute at @s run particle dust_pillar{block_state:"minecraft:lapis_block"} ~ ~ ~ 0 0.8 0 0.5 10 normal


execute if score @s green_number_value matches 0 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":enchanted_golden_apple}}
execute if score @s green_number_value matches 1..8 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":cooked_mutton}}
execute if score @s green_number_value matches 9..12 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":cooked_beef}}
execute if score @s green_number_value matches 13..20 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":apple}}
execute if score @s green_number_value matches 21..28 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":cooked_cod}}
execute if score @s green_number_value matches 29..35 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":sweet_berries}}
execute if score @s green_number_value matches 36..38 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":golden_apple}}
execute if score @s green_number_value matches 39..43 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":cooked_chicken}}
execute if score @s green_number_value matches 44..46 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":diamond}}
execute if score @s green_number_value matches 47..50 at @s run summon item ~ ~ ~ {Tags:["green.pinata_food"],Item:{"id":cooked_porkchop}}

execute at @s run playsound entity.item.pickup hostile @a ~ ~ ~ 1 1.5