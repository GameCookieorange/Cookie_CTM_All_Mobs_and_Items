execute at @s run playsound entity.wither.shoot hostile @a ~ ~ ~ 0.5 1
execute at @s run particle block_crumble{block_state:blackstone} ~ ~1 ~ 1 1 1 0.5 50

execute at @s run summon armor_stand ~ ~2 ~ {Silent:1b,Invulnerable:1b,Small:1b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["magenta.shooting_head"],DisabledSlots:4144959}

execute as @e[sort=nearest, limit=1, tag=magenta.shooting_head] run item replace entity @s armor.head from entity @e[tag=magenta.head_hunter, limit=1, type=zombie, sort=nearest] armor.head

item replace entity @s armor.head with air

scoreboard players set @s magenta_skill 0
tag @s remove magenta.has_a_skull
