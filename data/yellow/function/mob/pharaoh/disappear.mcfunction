execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0.01 10 normal

execute at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.4
execute at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.8

execute at @s run effect give @e[distance=..6, type=#minecraft:attack_entity] weakness 20 1 false

execute at @s run effect give @e[distance=..6, type=#minecraft:attack_entity] mining_fatigue 20 1 false

kill @s