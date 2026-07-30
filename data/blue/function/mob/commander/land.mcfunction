execute at @s run effect give @e[distance=..4, tag=blue.garrison] resistance 2 1 false
execute at @s run effect give @e[distance=..4, tag=blue.garrison] instant_damage 1 0 true

execute as @e[distance=..4, tag=blue.garrison] at @s run particle heart ~ ~1 ~ 0.4 0.4 0.4 0.4 5
execute as @e[distance=..4, tag=blue.garrison] at @s run particle crit ~ ~1 ~ 0.4 0.4 0.4 0.4 30

execute at @s run playsound item.mace.smash_ground_heavy hostile @a ~ ~ ~ 1.2 1

execute at @s run particle dust_pillar{block_state:"obsidian"} ~ ~0.5 ~ 2 0.3 2 0.6 120 normal
execute at @s run particle squid_ink ~ ~0.3 ~ 3 0.2 3 0 100

execute as @e[type=!#minecraft:not_mob, distance=..6, tag=!blue.ocean_army] run execute if predicate blue:is_on_ground run damage @s 10 mob_attack by @e[limit=1, sort=nearest, distance=..16, tag=blue.fortress_commander, type=zombie_villager] from @e[limit=1, sort=nearest, distance=..16, tag=blue.fortress_commander, type=zombie_villager]
tag @s remove blue.commander_jumping

