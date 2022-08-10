execute if entity @s[distance=6553.6..] run scoreboard players add @s F-Distance 65536
execute if entity @s[distance=6553.6..] positioned ^ ^ ^6553.6 facing entity @s feet run function random-respawn:core/spec/distance/tp/15
execute unless entity @s[distance=6553.6..] run function random-respawn:core/spec/distance/tp/15