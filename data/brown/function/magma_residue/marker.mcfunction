execute if entity @e[type=magma_cube, tag=brown.magma_residue, nbt={Size:1}, distance=..1] unless score @s brown_timer matches 1.. run ride @s mount @e[type=magma_cube, tag=brown.magma_residue, nbt={Size:1}, limit=1, distance=..1]

execute unless entity @e[type=magma_cube, tag=brown.magma_residue, nbt={Size:1}, distance=..1.5] run scoreboard players add @s[predicate=!brown:is_sitting] brown_timer 1

execute if score @s brown_timer matches 1 unless block ~ ~ ~ air run kill @s
execute if score @s brown_timer matches 1 unless entity @a[distance=..40] run kill @s

execute if score @s brown_timer matches 1 at @s run fill ~ ~ ~ ~ ~ ~ lava replace air

execute if score @s brown_timer matches 1..10 at @s run particle lava ~ ~ ~ ~0.5 ~2 ~0.5 1 50 normal


execute if score @s brown_timer matches 200.. at @s run function brown:magma_residue/reset

# give @a apple