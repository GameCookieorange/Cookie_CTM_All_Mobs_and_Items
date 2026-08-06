execute as @s[team=!green_party_creeper] run particle dust_color_transition{from_color:[0.365,0.871,0.184],to_color:[0.831,1.000,0.439],scale:2} ~ ~1 ~ 1.2 1.2 1.2 0.5 50 normal
execute as @s[team=!green_party_creeper] run team join green_party_creeper @s

execute as @s[team=green_party_creeper] run clear @s flint_and_steel

title @s[team=green_party_creeper] actionbar [{"translate":"<<","color":"gray","bold":true},{"translate":"你是","color":"dark_green","bold":true},{"translate":"派對苦力怕","color":"green","bold":true},{"translate":"的一員","color":"dark_green","bold":true},{"translate":">>","color":"gray","bold":true}]