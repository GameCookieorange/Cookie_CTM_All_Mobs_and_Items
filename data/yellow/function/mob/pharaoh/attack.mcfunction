execute as @e[distance=..4, type=#minecraft:attack_entity] run damage @s 4 minecraft:mob_attack_no_aggro by @e[tag=yellow.ghost_pharaoh, limit=1, sort=nearest, type=armor_stand]

execute at @s run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 1 1.8

execute at @s run particle sweep_attack ^1 ^1 ^0.5 0 0 0 0.1 2 normal
execute at @s run particle sweep_attack ^ ^1 ^1 0 0 0 0.1 2 normal
execute at @s run particle sweep_attack ^-1 ^1 ^0.5 0 0 0 0.1 2 normal


data merge entity @s {Pose:{Body:[20f,0f,0f],RightArm:[315f,0f,51f]},Rotation:[303f,0]}


# /summon armor_stand ~ ~ ~ {HasVisualFire:1b,ShowArms:1b,Invisible:1b,NoBasePlate:0b,PersistenceRequired:1b,Health:500f,Tags:["yellow.ghost_pharaoh"],DisabledSlots:4144959,equipment:{chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:eye"}}},head:{id:"minecraft:torchflower",count:1},mainhand:{id:"minecraft:netherite_scrap",count:1,components:{"minecraft:enchantment_glint_override":true}}}}