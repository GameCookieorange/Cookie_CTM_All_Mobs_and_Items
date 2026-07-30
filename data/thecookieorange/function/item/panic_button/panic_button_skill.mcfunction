effect give @s levitation 1 20
effect give @s slow_falling 6 1

tag @s remove orange_using_panic_button

# give @a acacia_boat

execute at @s run playsound cookieorange_res:custom.panic_button ambient @s ~ ~ ~ 0.4 1

scoreboard players set @s about_to_use_panic_button 0
scoreboard players set @s orange_panic_button_cd -800