scoreboard players add @s purple_wizard_select 1

execute if score @s purple_wizard_select matches 1 run function purple:mob/deepdark_wizard/skill_3/bullet/summon

execute if score @s purple_wizard_select matches 160.. run function purple:mob/deepdark_wizard/skill_3/reset