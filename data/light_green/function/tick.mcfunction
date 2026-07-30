execute as @e[tag=light_green.stomper_slime] at @s run function light_green:mob/stomper/stomper

execute as @e[tag=light_green.mutate_slime] at @s run function light_green:mob/mutate_slime/slime
execute as @e[tag=light_green.stopped_projectile, type=#minecraft:throwable_or_projectile] at @s run function light_green:mob/mutate_slime/stop

execute as @e[tag=light_green.bullet_slime, type=slime] at @s run function light_green:mob/bullet_slime/bullet_slime

execute as @e[tag=light_green.bloater, type=slime] at @s run function light_green:mob/bloater/bloater_ini

execute as @e[tag=light_green.big_slime, type=slime] at @s run function light_green:mob/big_slime/slime

execute as @e[tag=light_green.queen_slime ,type=slime, nbt={Size:1}] at @s run function light_green:mob/queen_slime/queen_slime_ini
execute as @e[tag=light_green.slime_spawn, type=falling_block, predicate=!light_green:is_sitting] at @s run function light_green:mob/queen_slime/slime_spawn

execute as @e[type=!#minecraft:not_mob] at @s run function light_green:mob/firefly_bush/glowing

execute as @e[type=drowned, tag=light_green.mudbound] at @s run function light_green:mob/mudbound/drowned_ini
execute as @e[team=light_green_slime] at @s run effect clear @s poison

execute as @e[type=creeper, tag=light_green.slime_creeper] at @s run function light_green:mob/slime_creeper/creeper_ini
execute as @e[type=area_effect_cloud, nbt={potion_contents:{custom_effects:[{id:"minecraft:luck",amplifier:60b}]}}] at @s run function light_green:mob/slime_creeper/effect_oozing

execute as @e[type=cave_spider, tag=light_green.swamp_spider] at @s run function light_green:mob/swamp_spider/cave_spider

execute as @e[type=spider, tag=light_green.web_spider] at @s run function light_green:mob/web_spider/web_spider
execute as @e[type=marker, tag=light_green.web_attack_marker] at @s run function light_green:mob/web_spider/web_attack

execute as @e[type=bogged, tag=light_green.swamp_hunter] at @s run function light_green:mob/swamp_hunter/skeleton_ini
execute as @e[type=marker, tag=light_green.hunter_hook_marker] at @s run function light_green:mob/swamp_hunter/hunter_hook
execute as @e[tag=light_green.being_hooked] at @s run function light_green:mob/swamp_hunter/pull/pull
execute as @e[type=marker, tag=light_green.clear_hook, predicate=!light_green:is_sitting] at @s run function light_green:mob/swamp_hunter/clear_hook