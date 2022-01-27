data merge entity @s {Invisible:0b,CustomNameVisible:1b,Marker:0b}
execute as @a if score @s F-Member = @e[tag=First-SP,limit=1,distance=..1] F-Member run loot replace entity @e[tag=First-SP,limit=1,distance=..1] armor.head loot random-respawn:player_head
data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name