# 進入判斷：在區域內且沒有標籤的人，執行進入函數
execute positioned ~-10 ~-180 ~-10 as @a[dx=220, dy=680, dz=220, tag=!in_orange_bgm_area] run function thecookieorange:music/play_orange_bgm

execute positioned ~-10 ~-180 ~-10 as @a[tag=in_orange_bgm_area] unless entity @s[dx=220, dy=680, dz=220] run function thecookieorange:music/not_play_orange_bgm