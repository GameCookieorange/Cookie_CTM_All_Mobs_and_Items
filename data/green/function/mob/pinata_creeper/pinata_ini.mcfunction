particle dust_color_transition{from_color:[1.000,0.098,0.098],to_color:[0.741,0.471,0.290],scale:1.5} ~ ~ ~ 0.5 0.8 0.8 0.1 1 normal

particle dust_color_transition{from_color:[1.000,0.643,0.180],to_color:[0.659,0.643,0.204],scale:1.5} ~ ~ ~ 0.5 0.8 0.8 0.1 1 normal

particle dust_color_transition{from_color:[1.000,1.000,0.180],to_color:[0.306,0.549,0.231],scale:1.5} ~ ~ ~ 0.5 0.8 0.8 0.1 1 normal

particle dust_color_transition{from_color:[0.624,1.000,0.129],to_color:[0.224,0.741,0.706],scale:1.5} ~ ~ ~ 0.5 0.8 0.8 0.1 1 normal

particle dust_color_transition{from_color:[0.129,0.796,1.000],to_color:[0.337,0.165,0.741],scale:1.5} ~ ~ ~ 0.5 0.8 0.8 0.1 1 normal

particle dust_color_transition{from_color:[0.114,0.051,1.000],to_color:[0.592,0.176,0.741],scale:1.5} ~ ~ ~ 0.5 0.8 0.8 0.1 1 normal

particle dust_color_transition{from_color:[0.776,0.051,1.000],to_color:[0.741,0.098,0.525],scale:1.5} ~ ~ ~ 0.5 0.8 0.8 0.1 1 normal

particle dust_color_transition{from_color:[1.000,0.051,0.557],to_color:[0.729,0.212,0.263],scale:1.5} ~ ~ ~ 0.5 0.8 0.8 0.1 1 normal

execute as @s[nbt={HurtTime:10s}] at @s run playsound item.bundle.drop_contents hostile @a ~ ~ ~ 1.5 0.8

# /give @p spawner[block_entity_data={id:"mob_spawner",SpawnCount:1,SpawnRange:10,MaxNearbyEntities:10,RequiredPlayerRange:24,Delay:0,MinSpawnDelay:3800,MaxSpawnDelay:4400,SpawnPotentials:[{data:{custom_spawn_rules:{sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:15}},entity:{id:"minecraft:creeper",Silent:1b,Team:"green_party_creeper",PersistenceRequired:1b,Health:24f,powered:1b,ExplosionRadius:0b,Fuse:20,Tags:["green.pinata_creeper","green.is_party_creeper"],CustomName:[{"bold":true,"color":"#D4D0BA","italic":false,"shadow_color":-16028133,"translate":"**","underlined":true},{"bold":true,"color":"#FF9A36","italic":false,"shadow_color":-16028133,"translate":"皮","underlined":true},{"bold":true,"color":"#FFD86B","italic":false,"shadow_color":-16028133,"translate":"那","underlined":true},{"color":"#C8FF75","shadow_color":-16028133,"translate":"塔"},{"color":"#6FE8C4","shadow_color":-16028133,"translate":"苦"},{"color":"#6EA8FF","shadow_color":-16028133,"translate":"力"},{"color":"#7D49D6","shadow_color":-16028133,"translate":"怕"},{"color":"#D4D0BA","shadow_color":-16777205,"translate":"**"}],Passengers:[{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["green_creeper_hat"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:clock",count:1,components:{"minecraft:item_model":"cookieorange_res:green/green_creeper_hat","minecraft:custom_data":{green_creeper_hat:1b}}}}},{id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,DisabledSlots:4144959,Tags:["green.pinata_armor_stand"]}],equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:enchantments":{"blast_protection":10,"vanishing_curse":1}}},head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{"blast_protection":10,"vanishing_curse":1}}}},attributes:[{id:"minecraft:max_health",base:24},{id:"minecraft:movement_speed",base:0.35}]}},weight:1}]}] 1