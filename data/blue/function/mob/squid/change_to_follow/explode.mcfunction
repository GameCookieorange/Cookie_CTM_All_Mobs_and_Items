stopsound @a[distance=..8] hostile cookieorange_res:custom.mob.blue.missile

summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:0b,PersistenceRequired:1b,NoAI:1b,Health:16f,ExplosionRadius:4b,Fuse:20,ignited:1b,Tags:["blue.ocean_army","blue.explosion"],CustomName:{"bold":true,"color":"#7792dc","italic":false,"shadow_color":-15907362,"text":"魚雷飛彈"},data:{blue.explosion:1b},attributes:[{id:"minecraft:armor",base:10},{id:"minecraft:attack_damage",base:20},{id:"minecraft:max_health",base:16},{id:"minecraft:scale",base:0.6},{id:"minecraft:water_movement_efficiency",base:1}]}

execute if entity @a run playsound cookieorange_res:custom.mob.blue.explode hostile @a ~ ~ ~ 0.6 1.5

particle squid_ink ~ ~ ~ 1.5 1.5 1.5 0.2 200

kill @s

