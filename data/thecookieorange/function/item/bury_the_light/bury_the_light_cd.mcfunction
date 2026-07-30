scoreboard players add @s orange_bury_the_light_cd 1

execute if score @s orange_bury_the_light_cd matches -2 at @s run playsound cookieorange_res:custom.bury_the_light_reload player @s ~ ~ ~ 1 1
execute if score @s orange_bury_the_light_cd matches -2 at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1

# execute if score @s orange_bury_the_light_cd matches -1 run item modify entity @s weapon.mainhand thecookieorange:item/bury_the_light_ready

execute if score @s orange_bury_the_light_cd matches -1 run tellraw @s {"translate": "item.cookieorange_res.bury_the_light_cd"}