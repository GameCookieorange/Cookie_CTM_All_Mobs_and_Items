scoreboard players reset @a[scores={cyan_used_potion=1..}] cyan_used_potion

tag @s add cyan_checked_potion

execute unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{cyan_bullets_potion:true}}}}] run return fail

summon marker ^ ^ ^ {Tags:["cyan.bullet_potion_marker","cyan.init"]}

ride @n[type=marker, tag=cyan.init] mount @s

execute as @n[type=marker, tag=cyan.init] store result score @s cyan_id at @s run scoreboard players get @p cyan_id 

tag @n[type=marker, tag=cyan.init] remove cyan.init

# give @a gold_ingot