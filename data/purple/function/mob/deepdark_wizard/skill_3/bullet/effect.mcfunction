execute as @s[tag=purple.skull] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run damage @s 6 indirect_magic by @e[distance=..2, type=armor_stand, sort=nearest, tag=purple.skull, limit=1] from @e[tag=purple.deepdark_wizard, sort=nearest, limit=1, distance=..46]

execute at @s run particle squid_ink ~ ~ ~ 0.5 0.5 0.5 0.4 20

execute as @s[tag=purple.s1] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run effect give @s darkness 8 1
execute as @s[tag=purple.s2] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run effect give @s glowing 20 1
execute as @s[tag=purple.s3] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run effect give @s wither 10 1
execute as @s[tag=purple.s4] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run effect give @s slowness 16 1

execute as @s[tag=purple.s1] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run playsound block.sculk_shrieker.shriek hostile @a ~ ~ ~ 0.6 1.5
execute as @s[tag=purple.s2] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run playsound block.amethyst_block.break hostile @a ~ ~ ~ 0.6 0.8
execute as @s[tag=purple.s3] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run playsound entity.wither.hurt hostile @a ~ ~ ~ 0.6 0.5
execute as @s[tag=purple.s4] run execute as @e[type=!#not_mob, tag=!purple.mobs, distance=..1.5] at @s run playsound block.glass.break hostile @a ~ ~ ~ 0.6 0.8

kill @s