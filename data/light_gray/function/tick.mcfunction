execute as @e[tag=light_gray.machine.elite_zombie] at @s run function light_gray:mob/zombie_elite/zombie_ini
execute as @e[tag=light_gray.machine.destroyer.left] at @s run function light_gray:mob/zombie_elite/machine/destroyer_left
execute as @e[tag=light_gray.machine.destroyer.right] at @s run function light_gray:mob/zombie_elite/machine/destroyer_right
execute as @e[tag=light_gray.machine.destroyer.far] at @s run function light_gray:mob/zombie_elite/machine/destroyer_far

execute as @e[tag=light_gray.wither_skeleton.annihilator] at @s run function light_gray:mob/wither_skeleton/annihilator

execute as @e[tag=light_gray.wither_skeleton_slayer] at @s run function light_gray:mob/wither_skeleton_slayer/slayer_ini

execute as @e[tag=light_gray.skeleton_slayer] at @s run function light_gray:mob/skeleton/slayer_ini
execute as @e[tag=slay_attack_range, type=marker] at @s run function light_gray:mob/skeleton/kill_marker

execute as @e[tag=light_gray.phantom_drone, type=phantom] at @s run function light_gray:mob/phantom_drone/drone_ini
execute as @e[tag=light_gray.marker, type=marker] at @s run function light_gray:mob/phantom_drone/kill_marker
execute as @e[tag=light_gray.creeper_bomb, type=creeper] at @s run function light_gray:mob/phantom_drone/creeper_bomb

execute as @e[tag=light_gray.technician, type=zombified_piglin] at @s run function light_gray:mob/technician/technician_ini
execute as @e[tag=light_gray.fixed_machine, team=light_gray_machine_team] at @s run function light_gray:mob/technician/if_fixed

execute as @e[tag=light_gray.tesla_laser, team=light_gray_machine_team, type=guardian] unless predicate light_gray:is_sitting at @s run function light_gray:mob/laser_machine/machine_ini
execute as @e[tag=light_gray.tesla_marker, type=marker] unless predicate light_gray:is_sitting at @s run function light_gray:mob/laser_machine/machine_ini
execute as @e[tag=light_gray.tesla_tower, team=light_gray_machine_team, type=drowned] at @s run function light_gray:mob/laser_machine/tower_ini

execute as @e[tag=light_gray.plasma, team=light_gray_machine_team, type=shulker] at @s run function light_gray:mob/plasma/plasma_ini
execute as @e[tag=light_gray.plasma_bullet, type=small_fireball] at @s run function light_gray:mob/plasma/new_bullet
execute as @e[tag=light_gray.fast_marker, type=marker] at @s run function light_gray:mob/plasma/fast_marker

execute as @e[type=shulker_bullet] at @s run execute if entity @e[tag=light_gray.plasma, distance=..3] run function light_gray:mob/plasma/bullet

execute as @e[tag=light_gray.sky_soldier, team=light_gray_machine_team] at @s run function light_gray:mob/sky_soldier/soldier_ini

execute as @e[tag=light_gray.shooter, team=light_gray_machine_team, type=skeleton] at @s run function light_gray:mob/shooter/shooter
execute as @e[tag=light_gray.shooter_bullet, type=armor_stand] at @s run function light_gray:mob/shooter/bullet/attack

# give @a cookie