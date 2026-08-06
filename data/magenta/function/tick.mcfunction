execute as @s[tag=magenta.steam_man] at @s run function magenta:steam_man/steam_man_ini

execute as @s[tag=magenta.ice_man] at @s run function magenta:ice_man/ice_man_ini

execute as @s[tag=magenta.parrot_bug, predicate=!magenta:is_sitting] at @s run kill @s

execute as @s[tag=!magenta.is_showing_desert_shadow, tag=magenta.desert_shadow] at @s run function magenta:parched/hide_ini
execute as @s[tag=magenta.show_yourself, type=marker] at @s run function magenta:parched/show_marker
execute as @s[tag=magenta.dash_point] at @s run function magenta:parched/dash_marker_debug
execute as @s[tag=magenta.is_showing_desert_shadow, tag=magenta.desert_shadow] at @s run function magenta:parched/show_ini

execute as @s[tag=magenta.big_slime, type=slime] at @s run function magenta:big_slime/slime

execute as @s[tag=magenta.wind_core, type=silverfish] at @s run function magenta:wind_core/silverfish

execute as @s[tag=magenta.rusty_machine, type=husk] at @s run function magenta:rusty_machine/machine

execute as @s[tag=magenta.space_bug, type=endermite] at @s run function magenta:space_bug/space_bug

execute as @s[tag=magenta.head_hunter, type=zombie] at @s run function magenta:head_hunter/head_hunter_ini

execute as @s[tag=magenta.shooting_head, type=armor_stand] at @s run function magenta:head_hunter/head/flying_head
