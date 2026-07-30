execute if entity @e[type=blaze, tag=brown.fiery_steam, distance=..2] unless score @s brown_timer matches 1.. run ride @s mount @e[type=blaze, tag=brown.fiery_steam, limit=1, distance=..2]

execute unless entity @e[type=blaze, tag=brown.fiery_steam, distance=..2] run scoreboard players add @s[predicate=!brown:is_sitting] brown_timer 1

execute if score @s brown_timer matches 1 unless entity @a[distance=..40] run kill @s

execute if score @s brown_timer matches 1 at @s run fill ~2 ~2 ~3 ~-2 ~-2 ~-3 fire replace air
execute if score @s brown_timer matches 1 at @s run fill ~3 ~2 ~2 ~-3 ~-2 ~-2 fire replace air

# execute if score @s brown_timer matches 1 as @e[tag=!brown.steampunk ,type=!blaze, type=!magma_cube, distance=..6] at @s run damage @s 8 minecraft:in_fire by @s[type=marker, tag=brown.steam_marker, distance=..20]

execute if score @s brown_timer matches 1 at @s run particle small_flame ~ ~ ~ 2 2 2 0.1 60 normal
execute if score @s brown_timer matches 1 at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1


execute if score @s brown_timer matches 399 at @s run function brown:fiery_steam/reset

execute if score @s brown_timer matches 400.. at @s run kill @s

# give @a apple