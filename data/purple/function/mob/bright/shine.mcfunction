particle dust_color_transition{from_color:[0.980,0.941,1.000],to_color:[0.902,0.784,0.969],scale:1.4} ~ ~1 ~ 0.6 0.8 0.6 0 1 normal

effect give @s resistance 1 1 true
effect give @s speed 1 2 true
effect give @s strength 1 0 true 
effect give @s invisibility 1 0 true
effect give @s glowing 1 0 true
effect give @s fire_resistance 1 0 true

execute if entity @s[tag=!purple.bright_armor_change] run item replace entity @s armor.chest with minecraft:air
execute if entity @s[tag=!purple.bright_armor_change] run item replace entity @s armor.head with minecraft:air

tag @s[tag=purple.bright_armor_change_back] remove purple.bright_armor_change_back
tag @s[tag=!purple.bright_armor_change] add purple.bright_armor_change
