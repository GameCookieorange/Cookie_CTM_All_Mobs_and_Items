effect give @s invisibility 2 1 true

tag @s add purple.change_to_hallway_ghost

execute store result score @s purple_wizard_name run data get entity @e[type=evoker, tag=purple.deepdark_wizard, limit=1, sort=nearest, distance=..50] UUID

execute at @s if score @s purple_wizard_name = @e[type=evoker, tag=purple.deepdark_wizard, limit=1, sort=nearest, distance=..20] purple_wizard_name run function purple:mob/deepdark_wizard/skill_1/vex_change