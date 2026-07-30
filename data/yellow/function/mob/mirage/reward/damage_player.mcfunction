execute if entity @s[tag=yellow.player_kill_fake] run damage @s 10 minecraft:indirect_magic by @e[tag=yellow.mirage_fake_marker, limit=1, sort=nearest]
execute if entity @s[tag=yellow.player_kill_fake] run playsound entity.wither.shoot hostile @a ~ ~ ~ 0.6 0.2
execute if entity @s[tag=yellow.player_kill_fake] run particle minecraft:falling_obsidian_tear ~ ~ ~ 1.5 1.5 1.5 0.1 50 normal
# execute if entity @s[tag=yellow.player_kill_fake] run give @a diamond
# give @s copper_ingot
