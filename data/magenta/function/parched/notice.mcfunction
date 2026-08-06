scoreboard players add @s magenta_summon_marker 1
execute if score @s magenta_summon_marker matches 10 run summon marker ^ ^ ^ {Tags:["magenta.mob","magenta.show_yourself"]}

execute if score @s magenta_summon_marker matches 10.. run scoreboard players set @s magenta_summon_marker 0
