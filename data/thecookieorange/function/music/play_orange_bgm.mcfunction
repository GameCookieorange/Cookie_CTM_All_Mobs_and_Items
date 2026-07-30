# tag @s add in_orange_bgm_area

execute unless entity @s[tag=known_the_orange_area] run title @s title {"bold":true,"color":"gold","italic":false,"shadow_color":704631946,"translate":"cookieorange_res.orange_title","underlined":true}
execute unless entity @s[tag=known_the_orange_area] run title @s subtitle {"bold":false,"color":"gold","italic":false,"shadow_color":1558748130,"translate":"cookieorange_res.orange_subtitle","underlined":false}

tag @s add known_the_orange_area

# playsound cookieorange_res:custom.orange_bgm_copyright_free ambient @s ~ ~ ~ 0.1 1 1
# give @a potato

