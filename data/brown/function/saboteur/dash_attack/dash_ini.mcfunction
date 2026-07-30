execute as @e[type=!#not_mob, tag=!brown.steampunk, limit=1, sort=nearest] at @s run summon marker ~ ~0.65 ~ {Tags:["brown.saboteur_dash_marker"]}

function brown:saboteur/dash_attack/dash_find

execute at @s run playsound entity.enderman.scream hostile @a ~ ~ ~ 0.8 0.6

execute at @s run summon marker ~ ~1.2 ~ {Tags:[brown.saboteur_hint_marker]}
