execute at @s run particle electric_spark ~ ~0.5 ~ 0.3 0.6 0.3 0 2 normal

effect give @s resistance 1 3 true
effect give @s fire_resistance 1 1 true

execute if entity @s[tag=!purple.silence_armor_change] run item replace entity @s armor.chest with minecraft:leather_chestplate[trim={material:quartz,pattern:dune},dyed_color=8684676,enchantment_glint_override=true,enchantments={"blast_protection":1,"fire_protection":1,"vanishing_curse":1}] 1
execute if entity @s[tag=!purple.silence_armor_change] run item replace entity @s armor.head with minecraft:leather_helmet[trim={material:quartz,pattern:dune},dyed_color=8684676,enchantment_glint_override=true,enchantments={"blast_protection":1,"fire_protection":1,"vanishing_curse":1}] 1

tag @s[tag=purple.silence_armor_change_back] remove purple.silence_armor_change_back
tag @s[tag=!purple.silence_armor_change] add purple.silence_armor_change
