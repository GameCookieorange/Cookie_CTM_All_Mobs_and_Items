execute as @a[scores={orange_panic_button_cd=0..,about_to_use_panic_button=20..}] at @s if entity @e[distance=0..5, type=#minecraft:hostile] run tag @s add orange_using_panic_button

advancement revoke @s only thecookieorange:using_panic_button

# give @a cookie