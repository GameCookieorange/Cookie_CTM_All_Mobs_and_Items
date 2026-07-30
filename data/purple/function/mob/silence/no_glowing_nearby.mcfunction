execute if entity @s[tag=!purple.silence_armor_change_back] run item replace entity @s armor.chest with leather_chestplate[dyed_color=8486783,enchantment_glint_override=true,enchantments={"blast_protection":1,"fire_protection":1,"vanishing_curse":1}] 1
execute if entity @s[tag=!purple.silence_armor_change_back] run item replace entity @s armor.head with leather_helmet[dyed_color=8684676,enchantment_glint_override=true,enchantments={"blast_protection":1,"fire_protection":1,"vanishing_curse":1}] 1

execute if entity @s[tag=!purple.silence_armor_change_back] run effect clear


tag @s[tag=purple.silence_armor_change] remove purple.silence_armor_change
tag @s[tag=!purple.silence_armor_change_back] add purple.silence_armor_change_back
