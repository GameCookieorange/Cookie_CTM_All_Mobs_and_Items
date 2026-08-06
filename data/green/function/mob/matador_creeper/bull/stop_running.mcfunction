tag @s remove bull_hit_the_wall
scoreboard players set @s green_attack 100
playsound item.mace.smash_ground_heavy master @a ~ ~ ~ 2 1
function green:mob/matador_creeper/bull/calculate_motion
# execute at @s run fill ~-3 ~ ~-3 ~3 ~3 ~3 air replace snow_block
execute as @s at @s run particle block_crumble{block_state:"minecraft:blackstone"} ~ ~2 ~ 1 1 1 2 100

execute as @s at @s run particle gust_emitter_large ^ ^1.5 ^2 2 2 2 2 5
execute as @s at @s run particle sweep_attack ^ ^1.5 ^2 2 2 2 2 15

execute as @e[tag=!green.matador_creeper, distance=..5, type=!ravager] at @s run damage @s 14 minecraft:mob_attack_no_aggro by @n[tag=green.bull, sort=nearest]

