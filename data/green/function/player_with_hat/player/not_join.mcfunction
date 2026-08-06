# execute as @s[team=green_party_creeper] run particle dust_color_transition{from_color:[0.686,0.871,0.769],to_color:[0.427,0.490,0.416],scale:1.5} ~ ~1 ~ 1.5 1.5 1.5 10 20 normal
particle dust_color_transition{from_color:[0.686,0.871,0.769],to_color:[0.427,0.490,0.416],scale:0.6} ~ ~1 ~ 1.2 1.2 1.2 0.2 10 normal

title @s[team=!green_party_creeper] actionbar [{"translate":"<<","color":"gray","bold":true},{"translate":"你現在會被發現","color":"red","bold":true},{"translate":">>","color":"gray","bold":true}]

execute as @s[team=green_party_creeper] run team leave @s
