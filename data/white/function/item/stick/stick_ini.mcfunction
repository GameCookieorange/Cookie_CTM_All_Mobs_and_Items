scoreboard players set @s white_stick 0
tag @s add is_using_stick

# /give @p stick[enchantment_glint_override=true,consumable={consume_seconds:0.1,animation:"none",sound:"block.azalea_leaves.break",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.egg.throw"}]},custom_data={throwable_stick:1b},lore=[{"color":"gray","italic":true,"shadow_color":1692130267,"text":"有點刺刺的"}],max_stack_size=16,use_cooldown={seconds:1,cooldown_group:"throwable_stick"}] 16