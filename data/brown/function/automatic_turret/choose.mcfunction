execute store result score @s brown_number_value run random value 1..3

execute if score @s brown_number_value matches 1..2 at @s run playsound block.anvil.use hostile @a ~ ~ ~ 0.6 0.4

execute if score @s brown_number_value matches 1 at @s run summon magma_cube ~ ~1.5 ~ {Team:"brown_steampunk",Health:20f,Size:1,wasOnGround:1b,Tags:["brown.magma_residue","brown.steampunk"],Passengers:[{id:"minecraft:marker",Tags:["brown.lava_marker"]}],CustomName:{"bold":true,"color":"#B36427","italic":false,"shadow_color":-4507883,"translate":"熔岩殘渣","underlined":true},attributes:[{id:"minecraft:jump_strength",base:0.45},{id:"minecraft:movement_speed",base:0.7},{id:"minecraft:max_health",base:20},{id:"minecraft:scale",base:1.6},{id:"minecraft:attack_damage",base:6}]}

execute if score @s brown_number_value matches 2 at @s run summon blaze ~ ~1.5 ~ {Team:"brown_steampunk",Health:24f,CustomName:{"bold":true,"color":"#B36427","italic":false,"shadow_color":-4507883,"translate":"熾熱蒸汽","underlined":true},Tags:["brown.steampunk","brown.fiery_steam"],Passengers:[{id:"minecraft:marker",Tags:["brown.steam_marker"]}],attributes:[{id:"minecraft:max_health",base:16},{id:"minecraft:scale",base:1.25},{id:"minecraft:explosion_knockback_resistance",base:0.5},{id:"minecraft:movement_speed",base:0.32},{id:"minecraft:attack_damage",base:8}]}

execute if score @s brown_number_value matches 3 at @s[tag=brown.turret_core] run function brown:automatic_turret/burn
execute if score @s brown_number_value matches 3 at @s[tag=brown.turret_1] run function brown:automatic_turret/burn_weak
execute if score @s brown_number_value matches 3 at @s[tag=brown.turret_2] run function brown:automatic_turret/burn_weak

execute if score @s brown_number_value matches 1 at @s run particle campfire_cosy_smoke ~ ~1.2 ~ 1 1 1 0 30
execute if score @s brown_number_value matches 2 at @s run particle campfire_signal_smoke ~ ~1.2 ~ 1 1 1 0 30


scoreboard players reset @s brown_number_value