effect give @s invisibility 2 1 true

tag @s add pink.checked_vex

execute store result score @s pink_pirate_captain run data get entity @e[type=evoker, tag=pink.pirate_captain, limit=1, sort=nearest, distance=..20] UUID

execute at @s if score @s pink_pirate_captain = @e[type=evoker, tag=pink.pirate_captain, limit=1, sort=nearest, distance=..20] pink_pirate_captain run function pink:mob/pirate_captain/vex_change