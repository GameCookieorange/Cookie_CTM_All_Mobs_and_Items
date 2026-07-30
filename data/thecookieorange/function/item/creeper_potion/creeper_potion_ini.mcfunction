execute as @s at @s run summon creeper ~ ~ ~ {Tags:["potion_tracker","new"],NoGravity:false,DeathLootTable:"minecraft:empty",Silent:1b,OnGround:1b,PersistenceRequired:0b,Health:16f,powered:1b,ExplosionRadius:1b,Fuse:25,CustomName:{"bold":true,"color":"white","shadow_color":-25285,"translate":"entity.cookieorange_res.orange_wind_charge_creeper"},active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:2000,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:16},{id:"minecraft:attack_damage",base:1},{id:"minecraft:follow_range",base:16},{id:"minecraft:knockback_resistance",base:0.2},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:safe_fall_distance",base:999}]}

execute as @s at @s run ride @e[tag=new,limit=1] mount @s

tag @e[type=lingering_potion] add orange_creeper_potion_processed
tag @e[tag=new] remove new

# execute as @s block

# execute as @e[type=creeper,tag=potion_tracker] run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0.001 1

# /give @p lingering_potion[max_stack_size=16,lore=[{"bold":false,"color":"gray","italic":false,"shadow_color":184156158,"translate":"item.cookieorange_res.orange_cyclone_potion_lore_1"},{"bold":false,"color":"gray","italic":false,"shadow_color":184156158,"translate":"item.cookieorange_res.orange_cyclone_potion_lore_2"},{"bold":false,"color":"gray","italic":false,"shadow_color":184156158,"translate":"item.cookieorange_res.orange_cyclone_potion_lore_3"}],custom_name={"bold":true,"color":"white","italic":false,"shadow_color":-929055033,"translate":"item.cookieorange_res.orange_cyclone_potion"},custom_data={orange_cyclone_potion:1b},potion_contents={custom_color:15792127,custom_effects:[{id:"minecraft:slow_falling",amplifier:0,duration:200,show_particles:1b}]},potion_duration_scale=10] 1