# execute if predicate cyan:is_on_ground run scoreboard players add @s cyan_debug 4
# execute if predicate cyan:is_on_ground as @e[tag=!cyan.space_creature, distance=..3] run effect give @s wither 2 1 true
# execute if predicate cyan:is_on_ground at @s run particle totem_of_undying ~ ~ ~ ~1 ~0.1 ~1 0 2 normal


scoreboard players add @s cyan_timer 1

execute if score @s cyan_timer matches 10..15 at @s unless entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..20] run scoreboard players set @s cyan_timer 10
execute if score @s cyan_timer matches 10..15 at @s if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..20] run scoreboard players set @s cyan_timer 16

execute if score @s cyan_timer matches 20 at @s run effect give @s glowing 1 1 true

execute if score @s cyan_timer matches 40 at @s run summon shulker_bullet ^ ^1.8 ^1.5 {Tags:["cyan.green_bullet"]}
execute if score @s cyan_timer matches 40 at @s run playsound entity.shulker.ambient hostile @a

execute if score @s cyan_timer matches 300.. run scoreboard players set @s cyan_timer 0