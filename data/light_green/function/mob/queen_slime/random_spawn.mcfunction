kill @s 

playsound entity.shulker.ambient hostile @a ~ ~ ~ 1 0.2

execute store result score @s light_green_number_value run random value 1..3

execute if score @s light_green_number_value matches 1 run summon slime ~ ~1 ~ {Health:12f,Size:1,Team:"light_green_slime",Tags:["light_green.bloater"],CustomName:{"bold":true,"color":"#9EE01B","italic":false,"shadow_color":-11765710,"text":"膨脹者","underlined":true},attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:jump_strength",base:0.5},{id:"minecraft:max_health",base:12},{id:"minecraft:movement_speed",base:0.5},{id:"minecraft:safe_fall_distance",base:15}]}

execute if score @s light_green_number_value matches 2 run summon slime ~ ~1 ~ {Team:"light_green_slime",Health:10f,Size:0,Tags:["light_green.bullet_slime"],CustomName:{"bold":true,"color":"#A1E813","italic":false,"shadow_color":-11569104,"text":"衝刺者","underlined":true},attributes:[{id:"minecraft:jump_strength",base:0.4},{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:1.5},{id:"minecraft:safe_fall_distance",base:10},{id:"minecraft:scale",base:2}]}

execute if score @s light_green_number_value matches 3 run summon slime ~ ~1 ~ {Team:"light_green_slime",Silent:0b,Health:24f,Size:0,Motion:[0.0,1.0,0.0],Tags:["light_green.stomper_slime"],CustomName:{"bold":true,"color":"#70E336","italic":false,"shadow_color":-16239099,"text":"踐踏者","underlined":true},attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:40},{id:"minecraft:jump_strength",base:2.5},{id:"minecraft:max_health",base:24},{id:"minecraft:movement_efficiency",base:0.4},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:safe_fall_distance",base:200},{id:"minecraft:scale",base:4},{id:"minecraft:water_movement_efficiency",base:0.6}]}