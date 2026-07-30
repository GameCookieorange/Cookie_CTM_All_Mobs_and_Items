scoreboard players add @s cyan_number_dark_matter_sweep 1

execute if score @s cyan_number_dark_matter_sweep matches 1 run effect give @s slowness 2 6 true

execute if score @s cyan_number_dark_matter_sweep matches 2 run playsound entity.ravager.roar hostile @a ~ ~ ~ 0.8 0.6

execute if score @s cyan_number_dark_matter_sweep matches 2 run particle squid_ink ~ ~1.5 ~ 0.8 0.8 0.8 1 100

execute if score @s cyan_number_dark_matter_sweep matches 49 if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..26] facing entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..26, sort=nearest, limit=1] eyes run tp @s ^ ^ ^ ~ ~
execute if score @s cyan_number_dark_matter_sweep matches 50 at @s run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.4
execute if score @s cyan_number_dark_matter_sweep matches 50 run summon minecraft:marker ^ ^1.5 ^3.8 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 50 run summon minecraft:marker ^-0.8 ^1.5 ^3.5 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 50 run summon minecraft:marker ^0.8 ^1.5 ^3.5 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 50 run summon minecraft:marker ^2 ^1.5 ^2.6 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 50 run summon minecraft:marker ^-2 ^1.5 ^2.6 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 50 run summon minecraft:marker ^2.5 ^1.5 ^1.2 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 50 run summon minecraft:marker ^-2.5 ^1.5 ^1.2 {Tags:["cyan.dark_sweep_attack"]}

execute if score @s cyan_number_dark_matter_sweep matches 69 if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..26] facing entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..26, sort=nearest, limit=1] eyes run tp @s ^ ^ ^ ~ ~
execute if score @s cyan_number_dark_matter_sweep matches 70 run function cyan:mob/dark_matter/skill/calculate_motion

execute if score @s cyan_number_dark_matter_sweep matches 84 if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..26] facing entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..26, sort=nearest, limit=1] eyes run tp @s ^ ^ ^ ~ ~
execute if score @s cyan_number_dark_matter_sweep matches 85 at @s run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.4
execute if score @s cyan_number_dark_matter_sweep matches 85 run summon minecraft:marker ^ ^1.5 ^3.8 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 85 run summon minecraft:marker ^-0.8 ^1.5 ^3.5 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 85 run summon minecraft:marker ^0.8 ^1.5 ^3.5 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 85 run summon minecraft:marker ^2 ^1.5 ^2.6 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 85 run summon minecraft:marker ^-2 ^1.5 ^2.6 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 85 run summon minecraft:marker ^2.5 ^1.5 ^1.2 {Tags:["cyan.dark_sweep_attack"]}
execute if score @s cyan_number_dark_matter_sweep matches 85 run summon minecraft:marker ^-2.5 ^1.5 ^1.2 {Tags:["cyan.dark_sweep_attack"]}

execute if score @s cyan_number_dark_matter_sweep matches 90.. run function cyan:mob/dark_matter/skill/reset_skill_1