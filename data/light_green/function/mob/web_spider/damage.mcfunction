damage @s 4 mob_attack_no_aggro by @e[type=spider, tag=light_green.web_spider,sort=nearest, limit=1]

playsound block.cobweb.fall hostile @a ~ ~ ~ 1.5 0.8 1 

particle minecraft:item_cobweb ~ ~ ~ 1 1 1 0.1 40 normal

fill ~-1 ~ ~ ~1 ~ ~ minecraft:cobweb replace #air
fill ~ ~ ~-1 ~ ~ ~1 minecraft:cobweb replace #air

kill @n[type=marker, sort=nearest, tag=light_green.web_attack_marker, limit=1]