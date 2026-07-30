execute as @s run particle minecraft:glow_squid_ink ~ ~1 ~ 0 0 0 0.1 1

scoreboard players add @s orange_debug 1

execute if score @s orange_debug matches 180.. run data merge entity @s {ignited:1b,Fuse:20}

# /give @p lingering_potion[max_stack_size=16,lore=[{"bold":false,"color":"gray","italic":false,"shadow_color":184156158,"translate":"item.cookieorange_res.orange_cyclone_potion_lore"}],custom_name={"bold":true,"color":"white","italic":false,"shadow_color":-926867769,"translate":"item.cookieorange_res.orange_cyclone_potion"},custom_data={orange_cyclone_potion:1b},potion_contents={potion:"minecraft:water",custom_color:15792127}] 1