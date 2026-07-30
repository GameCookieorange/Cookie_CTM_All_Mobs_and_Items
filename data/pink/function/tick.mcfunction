execute as @e[tag=pink.lightning_marker, type=armor_stand] at @s run function pink:mob/ghost_captain/lightning
execute as @e[type=drowned, tag=pink.drowned_captain] at @s run function pink:mob/ghost_captain/captain

execute as @e[type=drowned, tag=pink.drowned_shotgunner] at @s run function pink:mob/ghost_shotgunner/drown_shotgunner_ini
execute as @e[type=spectral_arrow, tag=pink.drowned_arrow] at @s run function pink:mob/ghost_shotgunner/arrow/kill_arrow

execute as @e[type=creeper, tag=pink.ghost_bomb] at @s run function pink:mob/ghost_bomb/ghost_bomb

execute as @e[type=skeleton, tag=pink.ghost_pirate] at @s run function pink:mob/ghost_pirate/ghost
execute as @e[type=bee, tag=pink.ghost_bee, predicate=!pink:is_sitting] at @s run function pink:mob/ghost_pirate/bee

execute as @e[type=drowned, tag=pink.ghost_strongman] at @s run function pink:mob/ghost_strongman/strongman

# execute as @e[tag=magenta.parrot_bug, predicate=!magenta:is_sitting] at @s run kill @s

execute as @e[type=vex, tag=!pink.checked_vex] at @s run execute if entity @e[type=evoker, tag=pink.pirate_captain, distance=..20] run function pink:mob/pirate_captain/vex_checked
execute as @e[type=evoker_fangs, tag=!pink.checked_fang] at @s run function pink:mob/pirate_captain/fang_checked
execute as @e[type=evoker, tag=pink.pirate_captain] at @s run function pink:mob/pirate_captain/captain
execute as @e[type=parrot, tag=pink.pirate_captain_parrot] at @s run function pink:mob/pirate_captain/parrot
execute as @e[type=marker, tag=pink.captain_trap] at @s run function pink:mob/pirate_captain/trap

execute as @e[type=vindicator, tag=pink.pirate_gunner] at @s run function pink:mob/pirate_gunner/gunner
execute as @e[type=marker, tag=pink.pirate_gunner_marker] at @s run function pink:mob/pirate_gunner/shoot

execute as @e[type=vindicator, tag=pink.pirate_angler] at @s run function pink:mob/pirate_angler/angler
execute as @e[type=pufferfish, tag=pink.pufferfish, tag=!pink.pufferfish_cal] at @s run function pink:mob/pirate_angler/cal
execute as @e[type=pufferfish, tag=pink.pufferfish, tag=pink.pufferfish_cal] at @s run function pink:mob/pirate_angler/reload_cal

execute as @e[team=pink_ghost_team, type=!bee] at @s run function pink:mob/team_fight/ghost
execute as @e[team=pink_pirate_team, type=!pufferfish] at @s run function pink:mob/team_fight/pirate

execute as @e[type=tnt, tag=pink.pirate_cannon_1] at @s run function pink:mob/pirate_cannon/four_tnt/tnt_1
execute as @e[type=tnt, tag=pink.pirate_cannon_2] at @s run function pink:mob/pirate_cannon/four_tnt/tnt_2
execute as @e[type=tnt, tag=pink.pirate_cannon_3] at @s run function pink:mob/pirate_cannon/four_tnt/tnt_3
execute as @e[type=tnt, tag=pink.pirate_cannon_4] at @s run function pink:mob/pirate_cannon/four_tnt/tnt_4
