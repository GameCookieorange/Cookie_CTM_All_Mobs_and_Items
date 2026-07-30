execute as @s[tag=!cyan.void_become_green] if entity @e[tag=cyan.dark_matter_creeper, distance=..5] run tag @s add cyan.void_become_green
execute as @s[tag=!cyan.void_become_purple] if entity @e[tag=cyan.abyssal_dark_matter_creeper, distance=..5] run tag @s add cyan.void_become_purple

item replace entity @s[tag=!cyan.void_become_purple, tag=!cyan.void_become_green] armor.head with black_concrete_powder 1
# give @a cooked_beef