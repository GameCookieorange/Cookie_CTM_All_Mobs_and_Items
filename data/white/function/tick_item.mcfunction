execute as @a[tag=is_using_stick] run function white:item/stick/throw_stick
execute as @e[tag=stick_armor, type=armor_stand] run function white:item/stick/stick_direction

execute as @e[tag=enemy_stick_armor, type=armor_stand] run function white:mob/dusk_dweller/stick_direction