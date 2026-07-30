execute if score @s[tag=cyan.waiting_respawn] cyan_zero_heart matches 1.. run function cyan:player_in_space/reset

execute unless entity @e[distance=..5, tag=cyan.hyperbaric] run scoreboard players remove @s cyan_player_air_timer 1

execute if score @s cyan_player_air_timer matches 2400.. run scoreboard players set @s cyan_player_air_timer 2400

# 3. 【顯示數值修正】將當前 Ticks 複製到 cyan_air_sec
scoreboard players operation @s cyan_air_sec = @s cyan_player_air_timer

execute if score @s cyan_player_air_timer matches 1.. run scoreboard players operation @s cyan_air_sec /= #20 cyan_constants
execute if score @s cyan_player_air_timer matches ..0 run scoreboard players set @s cyan_air_sec 0

# 4. 根據剩餘時間判定顏色並顯示在 Actionbar
# 🟢 安全狀態：大於 1 分鐘 (1201 ~ 2400 刻)
execute if score @s cyan_player_air_timer matches 1000..2400 run title @s actionbar [{"text":"🌀氧氣充分🌀: ","color":"aqua","bold":true},{"score":{"name":"@s","objective":"cyan_air_sec"},"color":"#7ccbff","bold":true},{"text":"秒","color":"gray"}]

# 🟡 警告狀態：30 ~ 60 秒 (600 ~ 1200 刻)
execute if score @s cyan_player_air_timer matches 400..999 run title @s actionbar [{"text":"!!氧氣不足!!: ","color":"yellow","bold":true},{"score":{"name":"@s","objective":"cyan_air_sec"},"color":"gold","bold":true},{"text":"秒","color":"gray"}]

# 🔴 危急狀態：少於 30 秒 (1 ~ 599 刻)
execute if score @s cyan_player_air_timer matches 1..399 run title @s actionbar [{"text":"🚨氧氣即將耗盡🚨: ","color":"red","bold":true},{"score":{"name":"@s","objective":"cyan_air_sec"},"color":"dark_red","bold":true},{"text":"秒","color":"red"}]

# 💀 氧氣完全耗盡 (0 刻與負數區間)
execute if score @s cyan_player_air_timer matches ..0 run title @s actionbar [{"text":"X💀X缺氧X💀X","color":"gray","bold":true}]

execute if score @s cyan_player_air_timer matches 980 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 0.8 1
execute if score @s cyan_player_air_timer matches 960 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 0.8 1
execute if score @s cyan_player_air_timer matches 400 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1 1
execute if score @s cyan_player_air_timer matches 380 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1 1
execute if score @s cyan_player_air_timer matches 360 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1 1
execute if score @s cyan_player_air_timer matches 100 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1.5 1
execute if score @s cyan_player_air_timer matches 80 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1.5 1
execute if score @s cyan_player_air_timer matches 60 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1.5 1
execute if score @s cyan_player_air_timer matches 40 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1.5 1
execute if score @s cyan_player_air_timer matches 20 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1.5 1
execute if score @s cyan_player_air_timer matches 1 at @s run playsound entity.witch.drink player @a ~ ~ ~ 1.2 1.5 1

# 5. 【核心優化：傷害冷卻循環】
# 當分數一路上扣到 -20（代表沒氧氣後過了 1 秒/20刻），才給予一次傷害，並重設回 0 重新倒數
execute if score @s cyan_player_air_timer matches ..-40 run damage @s 4 in_wall
execute if score @s cyan_player_air_timer matches -40..999 at @s run particle bubble_column_up ~ ~1.5 ~ 1 1 1 0.5 5 normal
execute if score @s cyan_player_air_timer matches -40..399 at @s run particle bubble_pop ~ ~1.5 ~ 1 1 1 0.5 10 normal
execute if score @s cyan_player_air_timer matches -20 run effect give @s nausea 5 2 true
execute if score @s cyan_player_air_timer matches ..-40 at @s[scores={cyan_death_reset=0}] run playsound entity.player.hurt_drown
execute if score @s cyan_player_air_timer matches ..-40 run scoreboard players set @s cyan_player_air_timer 0
# execute at @s run particle bubble_column_up ~ ~1.5 ~ 1.5 1.5 1.5 0.5 10 normal
# execute at @s run particle bubble_pop ~ ~1.5 ~ 1.5 1.5 1.5 0.5 10 normal
