execute as @s run data merge entity @s {Tags:["light_blue.mob","light_blue.powder_snow_creeper"], CustomName:{"bold":true,"color":"#9CE1FF","italic":false,"shadow_color":-9012798,"text":"粉雪苦力怕","underlined":true}}

execute as @e[type=!#not_mob, distance=..3.5] run damage @s 10 player_explosion by @e[type=area_effect_cloud, limit=1, sort=nearest, tag=light_blue.powder_snow_creeper]
execute as @e[type=!#not_mob, distance=..6] run damage @s 6 player_explosion by @e[type=area_effect_cloud, limit=1, sort=nearest, tag=light_blue.powder_snow_creeper]
execute as @e[type=!#not_mob, distance=..8] run damage @s 2 player_explosion by @e[type=area_effect_cloud, limit=1, sort=nearest, tag=light_blue.powder_snow_creeper]

fill ~-1 ~-2 ~-2 ~1 ~2 ~2 minecraft:powder_snow replace snow_block
fill ~-2 ~-2 ~-1 ~2 ~2 ~1 minecraft:powder_snow replace snow_block
fill ~-1 ~-2 ~-2 ~1 ~2 ~2 minecraft:powder_snow replace dirt
fill ~-2 ~-2 ~-1 ~2 ~2 ~1 minecraft:powder_snow replace dirt
fill ~-1 ~-2 ~-2 ~1 ~2 ~2 minecraft:powder_snow replace grass_block
fill ~-2 ~-2 ~-1 ~2 ~2 ~1 minecraft:powder_snow replace grass_block

effect give @a[distance=..7] minecraft:slowness 6 0

execute at @s run particle snowflake ~ ~1 ~ 0.75 0.75 0.75 1 100 normal

execute at @s run playsound entity.snow_golem.death master @a ~ ~ ~ 1 1.5 0.5

kill @s