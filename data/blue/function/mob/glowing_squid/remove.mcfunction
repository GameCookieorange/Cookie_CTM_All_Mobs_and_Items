execute as @s[tag=blue.squid_torpedo_front] run tag @s remove blue.squid_torpedo_front
execute as @s[tag=blue.squid_torpedo_back] run tag @s remove blue.squid_torpedo_back
execute as @s[tag=blue.squid_torpedo_left] run tag @s remove blue.squid_torpedo_left
execute as @s[tag=blue.squid_torpedo_right] run tag @s remove blue.squid_torpedo_right
execute as @s[tag=blue.squid_torpedo_up] run tag @s remove blue.squid_torpedo_up
execute as @s[tag=blue.squid_torpedo_down] run tag @s remove blue.squid_torpedo_down
execute as @s[tag=blue.squid_torpedo] run tag @s remove blue.squid_torpedo

tag @s add blue.find_the_player

execute as @s[nbt={HurtTime:10s}] at @s run function blue:mob/glowing_squid/explode