tag @s add pink.checked_fang

execute store result score @s pink_pirate_captain run data get entity @s Owner

execute at @s if score @s pink_pirate_captain = @e[type=evoker, tag=pink.pirate_captain, limit=1, sort=nearest, distance=..50] pink_pirate_captain run function pink:mob/pirate_captain/fang_change