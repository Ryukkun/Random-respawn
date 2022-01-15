summon armor_stand ~ ~ ~ {Tags:["First-SP"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[358f,4f,2f],LeftLeg:[0f,0f,342f],LeftArm:[0f,0f,219f],RightArm:[0f,0f,24f]}}
loot give @s loot random-respawn:player_head
data modify entity @e[tag=First-SP,limit=1,sort=nearest] ArmorItems[0] set from entity @p Inventory[0]
forceload add ~ ~
clear @s