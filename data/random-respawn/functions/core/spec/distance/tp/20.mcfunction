execute if entity @s[distance=104857.6..] run scoreboard players add @s F-Distance 1048576
execute if entity @s[distance=104857.6..] positioned ^ ^ ^104857.6 facing entity @s feet run function random-respawn:core/spec/distance/tp/19
execute unless entity @s[distance=104857.6..] run function random-respawn:core/spec/distance/tp/19