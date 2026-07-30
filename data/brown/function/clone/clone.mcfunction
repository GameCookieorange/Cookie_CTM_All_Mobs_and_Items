execute at @s run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 0.4 0.5
execute at @s run playsound entity.iron_golem.repair hostile @a ~ ~ ~ 0.5 1.3

execute if entity @p unless items entity @p weapon.mainhand air run item replace entity @s weapon.mainhand from entity @p weapon.mainhand

execute if entity @p unless items entity @p weapon.offhand air run item replace entity @s weapon.offhand from entity @p weapon.offhand

execute if entity @p unless items entity @p armor.head air run function brown:clone/head/store_name

execute if entity @p unless items entity @p armor.chest air run item replace entity @s armor.chest from entity @p armor.chest

execute if entity @p unless items entity @p armor.legs air run item replace entity @s armor.legs from entity @p armor.legs

execute if entity @p unless items entity @p armor.feet air run item replace entity @s armor.feet from entity @p armor.feet

item modify entity @s weapon.mainhand brown:item/vanish
item modify entity @s weapon.offhand brown:item/vanish
item modify entity @s armor.head brown:item/vanish
item modify entity @s armor.chest brown:item/vanish
item modify entity @s armor.legs brown:item/vanish
item modify entity @s armor.feet brown:item/vanish