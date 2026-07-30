execute as @e[distance=..2, type=#attack_entity, limit=1, sort=nearest] run damage @s 4 indirect_magic by @e[type=marker, tag=light_blue.bullet, limit=1, sort=nearest]

execute as @e[distance=..2, type=#attack_entity, limit=1, sort=nearest] run effect give @s slowness 3 1 true

playsound block.glass.break master @a ~ ~ ~ 0.6 1.5

# give @a cookie

kill @s