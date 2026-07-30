execute as @s[predicate=!pink:is_in_water] run data merge entity @s {Motion:[0.0 ,-3.0 ,0.0]}
execute unless predicate pink:is_in_water if predicate pink:is_on_ground at @s run playsound entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 0.8 0.4
execute unless predicate pink:is_in_water if predicate pink:is_on_ground at @s run playsound entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 0.8 0.4
execute unless predicate pink:is_in_water if predicate pink:is_on_ground run particle block{block_state:"minecraft:stone"} ~ ~0.2 ~ 2.0 0.0 2.0 1.0 100

execute unless predicate pink:is_in_water if predicate pink:is_on_ground run execute as @e[team=!pink_ghost_team, type=!#minecraft:not_mob, distance=..6, sort=nearest, predicate=pink:is_on_ground] run damage @s 5 mob_attack by @e[type=drowned, tag=pink.ghost_strongman, limit=1, sort=nearest] from @e[type=drowned, tag=pink.ghost_strongman, limit=1, sort=nearest]

