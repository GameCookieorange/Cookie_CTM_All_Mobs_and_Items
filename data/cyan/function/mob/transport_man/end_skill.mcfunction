tp @s @e[tag=cyan.armor_stand_tp_place, type=armor_stand, sort=nearest, limit=1]
execute at @s run kill @e[tag=cyan.armor_stand_tp_place, type=armor_stand, limit=1, sort=nearest]
scoreboard players set @s cyan_timer 200
execute at @s run particle portal ~ ~ ~ 0.2 0.2 0.2 0.8 50 normal
execute at @s run playsound entity.enderman.teleport hostile @a ~ ~ ~ 1 1