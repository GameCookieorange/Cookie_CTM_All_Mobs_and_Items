scoreboard players add @s purple_silence 1

particle falling_dust{block_state:gravel} ~ ~1 ~ 0.8 1 0.8 0 2 normal

execute if score @s purple_silence matches 1 run data modify entity @s Silent set value true
execute if score @s purple_silence matches 100 run data modify entity @s Silent set value true
execute if score @s purple_silence matches 200 run data modify entity @s Silent set value true
execute if score @s purple_silence matches 400.. run function purple:mob/mute_creeper/no_slience