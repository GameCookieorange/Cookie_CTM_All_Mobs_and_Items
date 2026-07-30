
particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0.2 30 normal
playsound entity.squid.hurt hostile @a ~ ~ ~ 0.5 2

execute as @e[type=!#minecraft:not_mob, tag=!purple.mobs, distance=..2] at @s run damage @s 6 indirect_magic by @e[distance=..5, type=armor_stand, sort=nearest, tag=purple.glowing_explosion, limit=1] from @e[tag=purple.deepdark_wizard, sort=nearest, limit=1, distance=..46]

execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..2] at @s run effect give @s darkness 6 0 false

function purple:mob/deepdark_wizard/break/break_area

data modify entity @s Marker set value 1b

tag @s add purple.is_on_ground