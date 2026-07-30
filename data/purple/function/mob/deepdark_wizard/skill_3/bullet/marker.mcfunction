scoreboard players add @s purple_timer 1

execute if score @s purple_timer matches 1 store result score @s purple_random_value run random value 1..360

execute store result storage purple:random rotate.rotx double 1 run scoreboard players get @s purple_random_value

execute if score @s purple_timer matches 2 run function purple:mob/deepdark_wizard/skill_3/bullet/random with storage purple:random rotate

execute if score @s purple_timer matches 4 at @s run summon minecraft:armor_stand ^7.5 ^ ^ {NoGravity:1b,Silent:1b,Invulnerable:0b,Glowing:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["purple.skull","purple.s1"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:sculk",count:1,components:{"minecraft:enchantment_glint_override":true}}}}
execute if score @s purple_timer matches 4 at @s run summon minecraft:armor_stand ^-7.5 ^ ^ {NoGravity:1b,Silent:1b,Invulnerable:0b,Glowing:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["purple.skull","purple.s2"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:sea_lantern",count:1,components:{"minecraft:enchantment_glint_override":true}}}}
execute if score @s purple_timer matches 4 at @s run summon minecraft:armor_stand ^ ^ ^7.5 {NoGravity:1b,Silent:1b,Invulnerable:0b,Glowing:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["purple.skull","purple.s3"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:wither_skeleton_skull",count:1,components:{"minecraft:enchantment_glint_override":true}}}}
execute if score @s purple_timer matches 4 at @s run summon minecraft:armor_stand ^ ^ ^-7.5 {NoGravity:1b,Silent:1b,Invulnerable:0b,Glowing:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["purple.skull","purple.s4"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:ice",count:1,components:{"minecraft:enchantment_glint_override":true}}}}

execute if score @s purple_timer matches 10.. run kill @s