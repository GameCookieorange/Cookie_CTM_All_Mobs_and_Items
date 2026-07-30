
execute at @s run particle minecraft:dust_pillar{block_state:dirt} ~ ~0.5 ~ 0.5 0.5 0.5 0.5 100 force
data merge entity @s {Motion:[0.0,1.2,0.0]}
execute as @e[distance=..4, type=#minecraft:attack_entity] at @s run damage @s 4 minecraft:mob_attack_no_aggro by @e[limit=1, tag=orange.mine_rat, type=silverfish]
