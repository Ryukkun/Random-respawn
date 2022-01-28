execute at @e[tag=First-SP] if score @s F-Member = @e[tag=First-SP,limit=1,distance=..1] F-Member run tp @s ~ ~ ~
execute at @s run spawnpoint @s ~ ~ ~