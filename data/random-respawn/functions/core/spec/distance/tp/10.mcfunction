execute if entity @s[distance=102.4..] run scoreboard players add @s F-Distance 1024
execute if entity @s[distance=102.4..] positioned ^ ^ ^102.4 facing entity @s feet run function random-respawn:core/spec/distance/tp/9
execute unless entity @s[distance=102.4..] run function random-respawn:core/spec/distance/tp/9