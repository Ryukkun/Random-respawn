loot replace entity @s armor.head loot random-respawn:player_head
summon marker ~ ~ ~ {Tags:["First-SP"],NoGravity:1b}
forceload add ~ ~
scoreboard players operation @e[tag=First-SP,sort=nearest,limit=1] F-Member = @s F-Member