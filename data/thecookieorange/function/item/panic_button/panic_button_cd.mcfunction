scoreboard players add @s orange_panic_button_cd 1
execute if score @s orange_panic_button_cd matches -1 run tellraw @s {"translate": "item.cookieorange_res.panic_button_cd"}
execute at @s if score @s orange_panic_button_cd matches -1 run playsound entity.player.levelup ambient @s ~ ~ ~ 1 1
execute if score @s orange_panic_button_cd matches -1 run particle glow_squid_ink ~ ~ ~ 0.5 0.5 0.5 3 10
