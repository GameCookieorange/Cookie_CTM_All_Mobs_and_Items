execute as @e[team=!light_gray_machine_team, type=!#not_mob, distance=..6] at @s run damage @s 4 mob_attack by @e[team=light_gray_machine_team, tag=light_gray.sky_soldier, limit=1, sort=nearest]

execute at @s run particle angry_villager ~ ~-0.2 ~ 1.5 0 1.5 0.1 100 normal @a

playsound entity.iron_golem.hurt hostile @a ~ ~ ~ 1 0.4

item replace entity @s armor.chest with iron_chestplate[trim={material:"minecraft:gold",pattern:"minecraft:snout"},enchantment_glint_override=true] 1
item replace entity @s weapon.mainhand with golden_sword[trim={material:"minecraft:gold",pattern:"minecraft:snout"},enchantment_glint_override=true] 1

tag @s add light_gray.is_on_ground
