# execute if entity @s[tag=!green.revive] run kill @s

scoreboard players add @s green_timer 1

execute if entity @s[nbt={HurtTime:9s}] run scoreboard players add @s green_debug 1
# execute if entity @s[nbt={HurtTime:9s}] run give @a cookie

execute if score @s green_debug matches 3 run kill @s

execute if score @s green_timer matches 5..80 run tp @s ^ ^ ^ ~10 ~

execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,1.000,0.502],to_color:[1.000,0.855,0.278],scale:1} ^ ^1.5 ^0.25 0 0 0 0.01 3
execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,0.980,0.369],to_color:[1.000,0.494,0.310],scale:1} ^ ^1.25 ^0.5 0 0 0 0.01 3
execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,0.714,0.278],to_color:[1.000,0.235,0.149],scale:1} ^ ^1 ^0.75 0 0 0 0.01 3
execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,0.459,0.098],to_color:[1.000,0.122,0.122],scale:1} ^ ^0.75 ^1 0 0 0 0.01 3
execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,0.459,0.098],to_color:[1.000,0.122,0.122],scale:1} ^ ^0.5 ^1.25 0 0 0 0.01 3
execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,0.459,0.098],to_color:[1.000,0.122,0.122],scale:1} ^ ^0.25 ^1 0 0 0 0.01 3
execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,0.714,0.278],to_color:[1.000,0.235,0.149],scale:1} ^ ^ ^0.75 0 0 0 0.01 3
execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,0.980,0.369],to_color:[1.000,0.494,0.310],scale:1} ^ ^-0.25 ^0.5 0 0 0 0.01 3
execute if score @s green_timer matches 10..80 run particle dust_color_transition{from_color:[1.000,1.000,0.502],to_color:[1.000,0.855,0.278],scale:1} ^ ^-0.5 ^0.25 0 0 0 0.01 3

execute if score @s green_timer matches 80 run playsound block.beacon.power_select hostile @a ~ ~ ~ 1 1
execute if score @s green_timer matches 80 run summon creeper ~ ~ ~ {Team:"green.party_creeper",PersistenceRequired:1b,Health:30f,powered:1b,ExplosionRadius:2b,Fuse:25,Tags:["green.phoenix_creeper"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["green.summon_core"]}],CustomName:{"bold":true,"color":"#1A9626","italic":false,"shadow_color":-3014853,"text":"**鳳凰苦力怕**","underlined":true},attributes:[{id:"minecraft:attack_damage",base:10},{id:"minecraft:explosion_knockback_resistance",base:1},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.8}]}
execute if score @s green_timer matches 80.. run kill @s