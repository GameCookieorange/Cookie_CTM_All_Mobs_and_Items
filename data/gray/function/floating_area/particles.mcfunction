# 2. 粒子邊框繪製 (對齊中心，解決禿出問題)
execute as @a[tag=in_floating_zone] positioned ~-18 ~-18 ~-18 unless entity @s[dx=36,dy=36,dz=36] run tag @s remove in_floating_zone

# --- 底部四條邊 (Y = -15) ---
particle cloud ~0 ~-15 ~-15 8 0 0 0 2
particle cloud ~0 ~-15 ~15 8 0 0 0 2
particle cloud ~-15 ~-15 ~0 0 0 8 0 2
particle cloud ~15 ~-15 ~0 0 0 8 0 2

# --- 頂部四條邊 (Y = 15) ---
particle cloud ~0 ~15 ~-15 8 0 0 0 2
particle cloud ~0 ~15 ~15 8 0 0 0 2
particle cloud ~-15 ~15 ~0 0 0 8 0 2
particle cloud ~15 ~15 ~0 0 0 8 0 2

# --- 垂直四條邊 (高度延伸) ---
particle cloud ~-15 ~0 ~-15 0 8 0 0 2
particle cloud ~15 ~0 ~-15 0 8 0 0 2
particle cloud ~-15 ~0 ~15 0 8 0 0 2
particle cloud ~15 ~0 ~15 0 8 0 0 2