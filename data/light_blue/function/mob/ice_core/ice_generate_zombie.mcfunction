particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^ ^2 ^ 0 0 0 0 0 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^ ^0 ^ 0 0 0 0 1 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^0.8 ^0.4 ^ 0 0 0 0 1 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^0.8 ^1.6 ^ 0 0 0 0 1 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^-0.8 ^0.4 ^ 0 0 0 0 1 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^-0.8 ^1.6 ^ 0 0 0 0 1 normal

particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^-0.4 ^1.3 ^ 0 0 0 0 0 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^-0.4 ^0.7 ^ 0 0 0 0 1 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^0.4 ^1.3 ^ 0 0 0 0 1 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^0.4 ^0.7 ^ 0 0 0 0 1 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^ ^1.5 ^ 0 0 0 0 1 normal
particle dust_color_transition{from_color:[0.631,0.988,1.000],to_color:[0.302,0.369,1.000],scale:1.2} ^ ^0.5 ^ 0 0 0 0 1 normal



particle cloud ~ ~1 ~ 0 0 0 0.01 1 normal

execute as @s[nbt={HurtTime:10s}] run playsound block.amethyst_block.break hostile @a ~ ~ ~ 2 1.2 1

effect give @e[distance=..6, type=player] slowness 1 0 false
effect give @s invisibility 1 0 true
