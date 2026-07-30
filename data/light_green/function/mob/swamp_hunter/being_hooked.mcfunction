tag @s add light_green.being_hooked

damage @s 4 mob_attack by @e[type=bogged, tag=light_green.swamp_hunter,sort=nearest, limit=1]

playsound block.chain.fall hostile @a ~ ~ ~ 1.2 1.6 1 

kill @n[type=marker, sort=nearest, tag=light_green.hunter_hook_marker, limit=1]