execute at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 0.2 20 normal
$execute at @s unless block ~ ~ ~ spawner run setblock ~ ~ ~ $(block_id) destroy
kill @s

# give @a cookie