execute as @e[tag=blue.drowned_prowler_elite] at @s run function blue:mob/indigo/indigo_prowler

execute as @e[tag=blue.naval_mine] at @s run function blue:mob/naval_mine/naval_mine

execute as @e[tag=blue.wandering_missile, type=glow_squid] at @s run function blue:mob/glowing_squid/squid
execute as @e[tag=blue.marked_player] at @s run function blue:mob/glowing_squid/marker

execute as @e[tag=blue.nautilus, type=zombie_nautilus] at @s run function blue:mob/ocean_solider/mount

execute as @e[tag=blue.launcher, type=zombie_villager] at @s run function blue:mob/torpedo_launcher/launcher_ini
execute as @e[tag=blue.launcher_torpedo, type=squid] at @s run function blue:mob/torpedo_launcher/torpedo/squid

execute as @e[tag=blue.squid_torpedo ,type=squid] at @s run function blue:mob/squid/torpedo_ini
# own direction
execute as @e[tag=blue.find_the_player ,type=squid] at @s run function blue:mob/squid/change_to_follow/face_player
execute as @e[tag=blue.explosion] at @s run function blue:mob/squid/change_to_follow/kill_bug_creeper

execute as @e[tag=blue.ancient, type=elder_guardian] at @s run function blue:mob/ancient/ancient

execute as @e[tag=blue.garrison] at @s run function blue:mob/fortress_solider/solider_ini

execute as @e[tag=blue.fortress_commander, type=zombie_villager] at @s run function blue:mob/commander/commander_ini

execute as @e[tag=blue.matrix_jellyfish, type=ghast] at @s run function blue:mob/jellyfish/matrix_jellyfish
execute as @e[tag=blue.ghast_fireball, type=fireball] at @s run function blue:mob/jellyfish/fireball
execute as @e[tag=blue.fish_ghast, type=cod] at @s run function blue:mob/jellyfish/kill_fish
execute as @e[tag=blue.ghast_fireball_new, type=fireball] at @s run function blue:mob/jellyfish/new_fireball
execute as @e[tag=blue.fireball_marker, type=marker] at @s run function blue:mob/jellyfish/marker/marker