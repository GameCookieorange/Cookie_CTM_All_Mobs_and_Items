effect give @s instant_health 1 100 true
playsound entity.blaze.death hostile @a ~ ~ ~ 1 2
particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.2 50 normal
data merge entity @s {ExplosionRadius:3s}
attribute @s scale base set 1.2
attribute @s movement_speed base set 0.3
attribute @s max_health base set 60
attribute @s attack_damage base set 20


