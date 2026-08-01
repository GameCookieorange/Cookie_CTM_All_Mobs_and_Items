execute as @e[tag=brown.magma_residue, type=magma_cube] at @s run function brown:magma_residue/magma_ini
execute as @e[tag=brown.lava_marker, type=marker] at @s run function brown:magma_residue/marker

execute as @e[tag=brown.fiery_steam, type=blaze] at @s run function brown:fiery_steam/steam
execute as @e[tag=brown.steam_marker, type=marker] at @s run function brown:fiery_steam/marker

execute as @e[tag=brown.self_destruction, type=creeper] at @s run function brown:self_destruction/self_destruction
execute as @e[type=area_effect_cloud, nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:30b}]}}] at @s run function brown:self_destruction/steam
execute as @e[type=marker, tag=brown.creeper_steam] at @s run function brown:self_destruction/marker

execute as @e[type=wither_skeleton, tag=brown.clone] at @s run function brown:clone/clone_ini

execute as @e[type=skeleton, tag=brown.jet_crossbowman] at @s run function brown:jet_crossbowman/jet_crossbowman

execute as @e[type=husk ,tag=brown.steam_machine] at @s run function brown:steam_machine/machine_ini
execute as @e[type=marker, tag=brown.steam_machine_marker] at @s run function brown:steam_machine/marker

execute as @e[type=fox, tag=brown.hot_potato_fox] at @s run function brown:fox/hot_potato_fox_ini
execute as @e[type=tnt, tag=brown.hot_potato] at @s run function brown:fox/tnt
execute as @e[type=!#minecraft:not_mob, tag=brown.got_hot_potato] at @s run function brown:fox/player_pass/got_hot_potato

execute as @e[type=piglin_brute ,tag=brown.saboteur] at @s run function brown:saboteur/saboteur_ini
execute as @e[type=marker ,tag=brown.saboteur_dash_marker] at @s run function brown:saboteur/marker
execute as @e[type=marker ,tag=brown.saboteur_hint_marker] at @s run function brown:saboteur/hint_marker
execute as @e[type=piglin_brute ,tag=brown.saboteur, tag=brown.saboteur_dash_start] at @s run function brown:saboteur/dash_attack/dash_start

execute as @e[tag=brown.turret] at @s run function brown:automatic_turret/turret_ini
execute as @e[type=marker, tag=brown.turret_marker] at @s run function brown:automatic_turret/marker

execute as @e[type=happy_ghast, tag=brown.happy_supply] at @s run function brown:steam_supply/army_ini
execute as @e[tag=brown.steam_supply_item] at @s run function brown:steam_supply/supply/supply_ini