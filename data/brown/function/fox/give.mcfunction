tag @p add brown.got_hot_potato

execute at @s run summon tnt ~ ~ ~ {Tags:["brown.hot_potato"],fuse:200s}

execute at @p run playsound entity.fox.screech hostile @p ~ ~ ~ 1 0.7 1
execute at @p run playsound entity.fox.ambient hostile @p ~ ~ ~ 1 0.7 1

