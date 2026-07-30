# give @a acacia_boat
effect give @s levitation 1 2 true

scoreboard players set @s light_gray_debug 0

stopsound @a master cookieorange_res:custom.mob.light_gray.elite_slayer

playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1.5 1

tag @s remove slay_attack_player
