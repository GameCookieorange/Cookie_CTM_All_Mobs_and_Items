scoreboard players add @s white_stick 1

execute if score @s white_stick matches 2 run execute at @s run summon armor_stand ^ ^1 ^ {Pose:{RightArm:[351f,319f,0f]},ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,DisabledSlots:4144959,Invulnerable:1b,Silent:1b,Tags:["stick_armor"],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantment_glint_override":true}}},drop_chances:{mainhand:0f}}

execute if score @s white_stick matches 2 run advancement revoke @s only white:item/stick
execute if score @s white_stick matches 2 run tag @s remove is_using_stick

