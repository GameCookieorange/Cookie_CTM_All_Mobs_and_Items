scoreboard players add @s orange_sky_claymore_cd 1

# 冷卻結束的那一刻 (-1 加 1 變成 0)
execute if score @s orange_sky_claymore_cd matches -2 at @s run playsound entity.player.attack.sweep player @s ~ ~ ~ 0.4 1
execute if score @s orange_sky_claymore_cd matches -3..-1 at @s run particle minecraft:spit ^ ^ ^1 0.2 0.2 0.2 2 20

# execute 

# execute if score @s orange_sky_claymore_cd matches -1 run tellraw @s {"translate": "item.cookieorange_res.sky_claymore_cd"}