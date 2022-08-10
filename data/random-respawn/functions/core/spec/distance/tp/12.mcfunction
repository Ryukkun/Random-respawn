execute if entity @s[distance=409.6..] run scoreboard players add @s F-Distance 4096
execute if entity @s[distance=409.6..] positioned ^ ^ ^409.6 facing entity @s feet run function random-respawn:core/spec/distance/tp/11
execute unless entity @s[distance=409.6..] run function random-respawn:core/spec/distance/tp/11