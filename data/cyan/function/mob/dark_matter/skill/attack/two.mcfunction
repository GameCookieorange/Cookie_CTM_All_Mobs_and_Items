# 雷射眼

effect give @s slowness 2 10 true

execute at @s run particle squid_ink ~ ~1.75 ~ 0.5 0.5 0.5 0.2 100 normal
execute at @s run playsound entity.wither.shoot hostile @a ~ ~ ~ 1 0.1

summon guardian ~ ~2 ~ {Team:"cyan_dark_matter", NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,Tags:["cyan.eye","cyan.space_creature"],CustomName:{"bold":true,"color":"#553763","italic":false,"shadow_color":-11566994,"translate":"<***暗物質射線***>","underlined":true},attributes:[{id:"minecraft:attack_damage",base:7},{id:"minecraft:follow_range",base:50}],active_effects:[{id:invisibility,ambient:true, show_particles:false, duration:99999}]}

# give @a cooked_beef