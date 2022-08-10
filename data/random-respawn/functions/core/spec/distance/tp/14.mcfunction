execute if entity @s[distance=1638.4..] run scoreboard players add @s F-Distance 16384
execute if entity @s[distance=1638.4..] positioned ^ ^ ^1638.4 facing entity @s feet run function random-respawn:core/spec/distance/tp/13
execute unless entity @s[distance=1638.4..] run function random-respawn:core/spec/distance/tp/13