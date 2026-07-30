execute at @s run summon fireball ~ ~ ~ {HasVisualFire:false,Fire:0,Glowing:0b,ExplosionPower:2b,Tags:["blue.ghast_fireball_new"],Item:{id:"minecraft:lapis_block",count:1}}

# this thing will have at least ten markers. IDK why.
execute at @s run summon marker ~ ~ ~ {Tags:["blue.fireball_marker"]}

execute as @e[type=fireball, distance=..3, tag=blue.ghast_fireball_new] at @s run data modify entity @s Motion set from entity @e[tag=blue.ghast_fireball, type=fireball, sort=nearest, limit=1, distance=..10] Motion

execute as @e[type=fireball, distance=..3, tag=blue.ghast_fireball_new] at @s run data modify entity @s Owner set from entity @e[type=ghast, distance=..10, sort=nearest, limit=1, tag=blue.matrix_jellyfish] UUID

kill @s
