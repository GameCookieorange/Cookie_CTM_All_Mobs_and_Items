execute at @s[tag=!gray.stop_projectile] run data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
execute at @s[tag=!gray.stop_projectile] run data modify entity @s NoGravity set value true
execute at @s[tag=!gray.stop_projectile] run tag @s add gray.stop_projectile

# give @a cookie

execute at @s[tag=gray.stop_projectile] run particle small_gust ~ ~ ~ 0.1 0.1 0.1 0 1 normal

execute at @s[tag=gray.stop_projectile] facing entity @e[tag=gray.current_center,limit=1,sort=nearest, distance=..10] feet rotated ~ ~ run tp @s ^ ^ ^0.5
