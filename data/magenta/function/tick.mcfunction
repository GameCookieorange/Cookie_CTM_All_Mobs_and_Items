execute as @e[tag=magenta.steam_man] at @s run function magenta:steam_man/steam_man_ini

execute as @e[tag=magenta.ice_man] at @s run function magenta:ice_man/ice_man_ini

execute as @e[tag=magenta.parrot_bug, predicate=!magenta:is_sitting] at @s run kill @s

execute as @e[tag=!magenta.is_showing_desert_shadow, tag=magenta.desert_shadow] at @s run function magenta:parched/hide_ini
execute as @a[predicate=magenta:mobs/look_desert_shadow] at @s run function magenta:parched/notice
execute as @e[tag=magenta.show_yourself, type=marker] at @s run function magenta:parched/show_marker
execute as @e[tag=magenta.dash_point] at @s run function magenta:parched/dash_marker_debug
execute as @e[tag=magenta.is_showing_desert_shadow, tag=magenta.desert_shadow] at @s run function magenta:parched/show_ini

execute as @e[tag=magenta.big_slime, type=slime] at @s run function magenta:big_slime/slime

execute as @e[tag=magenta.wind_core, type=silverfish] at @s run function magenta:wind_core/silverfish

execute as @e[tag=magenta.rusty_machine, type=husk] at @s run function magenta:rusty_machine/machine

execute as @e[tag=magenta.space_bug, type=endermite] at @s run function magenta:space_bug/space_bug

execute as @e[tag=magenta.head_hunter, type=zombie] at @s run function magenta:head_hunter/head_hunter_ini

execute as @e[tag=magenta.shooting_head, type=armor_stand] at @s run function magenta:head_hunter/head/flying_head
