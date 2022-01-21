loot give @s loot random-respawn:player_head
data modify entity @e[tag=First-SP,limit=1,sort=nearest] data set from entity @s Inventory[0]
clear @s player_head
execute if data entity @e[tag=First-SP,limit=1,sort=nearest] {Inventory:[{id:"minecraft:player_head",tags:[]}]}