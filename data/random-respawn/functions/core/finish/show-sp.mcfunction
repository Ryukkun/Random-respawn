data merge entity @s {Invisible:0b,CustomNameVisible:1b,Marker:0b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{},{}]}
execute as @a if score @s F-Member = @e[tag=First-SP,limit=1,distance=..1] F-Member run loot replace entity @e[tag=First-SP,limit=1,distance=..1] armor.head loot random-respawn:player_head
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
loot replace entity @s armor.chest loot random-respawn:sp-armor
data modify entity @s ArmorItems[0].tag.display.color set from entity @s ArmorItems[2].tag.display.color
data modify entity @s ArmorItems[1].tag.display.color set from entity @s ArmorItems[2].tag.display.color