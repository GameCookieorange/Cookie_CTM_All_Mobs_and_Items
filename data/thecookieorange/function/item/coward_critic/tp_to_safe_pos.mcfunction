# $ 符號代表這是一個 Macro 函數
effect give @s minecraft:resistance 3 255 true
$tp @s $(x) $(y) $(z)

$execute if predicate thecookieorange:coward_critic/low_durability run playsound minecraft:block.anvil.destroy player @s $(x) $(y) $(z) 4 0.8

function thecookieorange:item/coward_critic/test_the_coward_critic

$particle minecraft:reverse_portal $(x) $(y) $(z) 0.2 0.5 0.2 0.1 50

$playsound minecraft:entity.enderman.teleport player @s $(x) $(y) $(z) 6 2

$execute positioned $(x) $(y) $(z) run effect give @e[type=#minecraft:hostile, distance=..8] weakness 8 255 true



