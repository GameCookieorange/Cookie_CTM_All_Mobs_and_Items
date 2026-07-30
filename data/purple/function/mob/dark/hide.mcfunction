particle dust_color_transition{from_color:[0.137,0.106,0.161],to_color:[0.275,0.184,0.412],scale:2} ~ ~1 ~ 0.4 0.8 0.4 0 2 normal

effect give @s resistance 1 1 true
effect give @s speed 1 2 true
effect give @s strength 1 0 true 
effect give @s invisibility 1 0 true

execute if entity @s[tag=!purple.dark_armor_change] run item replace entity @s armor.chest with minecraft:air
execute if entity @s[tag=!purple.dark_armor_change] run item replace entity @s armor.head with minecraft:air

tag @s[tag=purple.dark_armor_change_back] remove purple.dark_armor_change_back
tag @s[tag=!purple.dark_armor_change] add purple.dark_armor_change
