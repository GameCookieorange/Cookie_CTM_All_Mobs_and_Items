# 旋轉劍

effect give @s slowness 5 10 true

execute at @s run particle squid_ink ~ ~1.75 ~ 0.5 0.5 0.5 0.2 100 normal
execute at @s run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 0.1

summon minecraft:armor_stand ~1.5 ~ ~1.5 {Team:"cyan_dark_matter",Tags:["cyan.dark_sword","cyan.dark_sword_0"],DisabledSlots:4144959,CustomName:{"bold":true,"color":"#553763","italic":false,"shadow_color":-11566994,"translate":"<***暗物質***>","underlined":true},equipment:{offhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:enchantment_glint_override":true}}},Glowing:1b,Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Marker:true,Pose:{LeftArm:[0f,0f,45f]}}

summon minecraft:armor_stand ~1.5 ~ ~-1.5 {Team:"cyan_dark_matter",Tags:["cyan.dark_sword","cyan.dark_sword_1"],DisabledSlots:4144959,CustomName:{"bold":true,"color":"#553763","italic":false,"shadow_color":-11566994,"translate":"<***暗物質***>","underlined":true},equipment:{offhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:enchantment_glint_override":true}}},Glowing:1b,Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Marker:true,Pose:{LeftArm:[0f,0f,45f]}}

summon minecraft:armor_stand ~-1.75 ~1.5 ~ {Team:"cyan_dark_matter",Tags:["cyan.dark_sword","cyan.dark_sword_2"],DisabledSlots:4144959,CustomName:{"bold":true,"color":"#553763","italic":false,"shadow_color":-11566994,"translate":"<***暗物質***>","underlined":true},equipment:{offhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:enchantment_glint_override":true}}},Glowing:1b,Invisible:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Marker:true,Pose:{LeftArm:[0f,0f,45f]}}

# give @a cookie