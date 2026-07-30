execute if entity @e[type=#minecraft:attack_entity ,distance=..3] run playsound minecraft:item.firecharge.use hostile @a ~ ~ ~ 1 0.8


execute if entity @e[type=#minecraft:attack_entity ,distance=..3] run execute as @e[type=#minecraft:attack_entity ,distance=..3] run damage @s 6 minecraft:in_fire by @e[type=phantom, sort=nearest, tag=gray.warm_phantom, limit=1]


summon silverfish ~ ~ ~ {Silent:1b,Health:12f,Team:"gray_floating_creeper",Tags:["gray.warm_silverfish", "gray.cyclone"],CustomName:{"bold":true,"color":"#bdbdbd","italic":false,"shadow_color":-2876915,"translate":"溫熱核心","underlined":true},equipment:{offhand:{id:"minecraft:wind_charge",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"white","italic":true,"shadow_color":-9871264,"translate":"固態風"}}}},drop_chances:{offhand:0.30},active_effects:[{id:"minecraft:fire_resistance",amplifier:1,duration:99999,show_particles:0b},{id:"minecraft:wither",amplifier:0,duration:60000,show_particles:0b},{id:"minecraft:invisibility",amplifier:1,duration:60000,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:2.5},{id:"minecraft:attack_knockback",base:0.2},{id:"minecraft:follow_range",base:20},{id:"max_health",base:12},{id:"minecraft:scale",base:2},{id:"minecraft:safe_fall_distance",base:80}]}

kill @s