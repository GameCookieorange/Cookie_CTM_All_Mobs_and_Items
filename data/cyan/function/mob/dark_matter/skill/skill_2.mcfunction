# 1. 計時器累加
scoreboard players add @s cyan_debug 1

# execute if score @s cyan_debug matches 1 as @s at @e[type=wither_skeleton,distance=..4,limit=1,sort=nearest] facing entity @e[type=wither_skeleton,distance=..4,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~120 0

execute if score @s[tag=cyan.dark_sword_0] cyan_debug matches 1 as @s at @e[type=wither_skeleton,distance=..4,limit=1,sort=nearest] facing entity @e[type=wither_skeleton,distance=..4,limit=1,sort=nearest] eyes run tp @s ~ ~0.8 ~ ~240 0

execute if score @s[tag=cyan.dark_sword_1] cyan_debug matches 1 as @s at @e[type=wither_skeleton,distance=..4,limit=1,sort=nearest] facing entity @e[type=wither_skeleton,distance=..4,limit=1,sort=nearest] eyes run tp @s ~ ~0.8 ~ ~120 0

execute if score @s[tag=cyan.dark_sword_2] cyan_debug matches 1 as @s at @e[type=wither_skeleton,distance=..4,limit=1,sort=nearest] facing entity @e[type=wither_skeleton,distance=..4,limit=1,sort=nearest] eyes run tp @s ~ ~0.8 ~ ~ 0

particle dust_color_transition{from_color:[0.427,0.020,0.702],to_color:[0.776,0.706,0.871],scale:1.8} ~ ~1 ~ 0.1 0.1 0.1 0.1 10 force

particle crit ~ ~1 ~ 0.1 0.1 0.1 0.1 15 normal

execute if score @s cyan_debug matches 2 as @s at @s run tp @s ^ ^ ^2

execute if score @s cyan_debug matches 3..101 as @s run tp @s ^0.4 ^ ^-0.4 ~-8 ~

execute if score @s cyan_debug matches 101 at @s run playsound entity.wither.hurt hostile @a ~ ~ ~ 0.4 0.2

execute if score @s cyan_debug matches 101 at @s run particle squid_ink ~ ~1.75 ~ 0.5 0.5 0.5 0.2 50 normal

execute if score @s cyan_debug matches 101..260 as @s run tp @s ^0.4 ^ ^0.7 ~-5 ~

execute if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..2.5] run execute as @e[tag=!cyan.space_creature, type=!#not_mob, distance=..2.5] at @s run damage @s 6 mob_attack by @e[type=armor_stand, limit=1, sort=nearest, tag=cyan.dark_sword] from @e[type=wither_skeleton, tag=cyan.dark_matter, limit=1, sort=nearest]

# execute if entity @e[tag=!cyan.space_creature, type=!#not_mob, distance=..2.5] run execute as @e[tag=!cyan.space_creature, type=!#not_mob, distance=..2.5] at @s run damage @s 6 mob_attack by @e[type=armor_stand, limit=1, sort=nearest, tag=cyan.dark_sword]


execute if score @s cyan_debug matches 260.. run kill @s