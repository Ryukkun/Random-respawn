execute if entity @s[distance=1677721.6..] run scoreboard players add @s F-Distance 16777216
execute if entity @s[distance=1677721.6..] positioned ^ ^ ^1677721.6 facing entity @s feet run function random-respawn:core/spec/distance/tp/23
execute unless entity @s[distance=1677721.6..] run function random-respawn:core/spec/distance/tp/23