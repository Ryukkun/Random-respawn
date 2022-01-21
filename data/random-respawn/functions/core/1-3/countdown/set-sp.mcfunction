summon marker ~ ~ ~ {Tags:["First-SP"],NoGravity:1b}
loot give @s loot random-respawn:player_head
execute at @s run data modify entity @e[tag=First-SP,limit=1,sort=nearest] data set from entity @s Inventory[0]
forceload add ~ ~
clear @s player_head