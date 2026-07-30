tag @s add yellow.is_angry

data modify entity @s angry_at set from entity @e[type=#minecraft:attack_entity, sort=nearest, limit=1] UUID

execute at @s run playsound entity.creeper.primed hostile @a ~ ~ ~ 1 0.8
execute at @s run playsound entity.piglin.jealous hostile @a ~ ~ ~ 1 1

effect give @s speed 30 2 true

summon tnt ~ ~ ~ {Silent:0b,fuse:200,explosion_power:2,Tags:["yellow.bomb"],CustomName:{"bold":true,"color":"#FF963B","italic":false,"shadow_color":-4586492,"text":"紅色炸藥","underlined":true},block_state:{Name:"minecraft:red_sand"}}

