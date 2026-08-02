execute store result score @s brown_number_value run random value 1..7

execute if score @s brown_number_value matches 1..5 at @s run playsound entity.chicken.hurt hostile @a ~ ~ ~ 0.6 0.4


execute if score @s brown_number_value matches 1..3 at @s run summon chicken ~ ~ ~ {Team:"brown_steampunk",Health:10f,IsChickenJockey:0b,Tags:["brown.steam_supply_item","brown.steampunk"],Passengers:[{id:"minecraft:slime",Team:"brown_steampunk",Health:10f,Size:0,Tags:["brown.steam_supply_item","brown.steampunk"],CustomName:{"bold":true,"color":"#F0C773","italic":false,"shadow_color":-8903931,"translate":"快樂空投","underlined":true},active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:999999}],attributes:[{id:"minecraft:max_health",base:10},{id:"minecraft:scale",base:2},{id:"minecraft:movement_speed",base:0}]}],attributes:[{id:"minecraft:max_health",base:10}]}

execute if score @s brown_number_value matches 4..5 at @s run summon chicken ~ ~ ~ {Team:"brown_steampunk",Health:16f,Tags:["brown.steam_supply_item","brown.steampunk"],Passengers:[{id:"minecraft:creeper",Team:"brown_steampunk",Health:16f,Tags:["brown.steam_supply_item","brown.steampunk"],CustomName:{"bold":true,"color":"#F0C773","italic":false,"shadow_color":-8903931,"translate":"快樂空投","underlined":true},active_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:999999}],attributes:[{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0}]}],attributes:[{id:"minecraft:max_health",base:10}]}

scoreboard players reset @s brown_number_value