tag @p add brown.got_hot_potato

scoreboard players set @p brown_hot_potato_timer 0

execute at @s run summon tnt ~ ~ ~ {Tags:["brown.hot_potato"],fuse:300s}

execute at @p run playsound entity.fox.screech hostile @p ~ ~ ~ 1 0.7 1
execute at @p run playsound entity.fox.ambient hostile @p ~ ~ ~ 0.8 0.7 1
execute at @p run playsound entity.tnt.primed hostile @p ~ ~ ~ 1 0.7 1


damage @s 0 mob_attack