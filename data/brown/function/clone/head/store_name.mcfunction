execute as @a[sort=furthest] run loot replace entity 2b83f9f7-a749-4e17-a49f-96cb8af47c83 container.0 loot brown:player_head

# execute as @s run data modify storage brown:data player_name set from entity 2b83f9f7-a749-4e17-a49f-96cb8af47c83 item.components."minecraft:profile".name

execute store result score @s brown_clone_target run data get entity @a[sort=furthest, limit=1] UUID

item replace entity @s armor.head from entity @e[type=item_display, tag=brown.item_display_to_get_name, sort=nearest, limit=1] container.0

# kill @e[tag=brown.item_display_to_get_name, limit=1]


