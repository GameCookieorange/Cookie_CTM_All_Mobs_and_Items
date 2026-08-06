execute as @e[type=creeper, distance=..30, tag=green.is_party_creeper] at @s run effect give @s speed 12 1 false

execute as @e[type=creeper, distance=..30, tag=green.is_party_creeper] at @s run function green:mob/pinata_creeper/facing_armor

effect give @s glowing 10 1 true

playsound block.bell.use hostile @a ~ ~ ~ 2.8 1.5