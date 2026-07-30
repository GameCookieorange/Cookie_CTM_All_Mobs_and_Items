tag @s add purple.change_to_glowing

execute store result score @s purple_wizard_name run data get entity @s Owner

execute at @s if score @s purple_wizard_name = @e[type=evoker, tag=purple.deepdark_wizard, limit=1, sort=nearest, distance=..40] purple_wizard_name run function purple:mob/deepdark_wizard/skill_2/fang_change