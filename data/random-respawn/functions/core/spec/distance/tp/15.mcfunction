execute if entity @s[distance=3276.8..] run scoreboard players add @s F-Distance 32768
execute if entity @s[distance=3276.8..] positioned ^ ^ ^3276.8 facing entity @s feet run function random-respawn:core/spec/distance/tp/14
execute unless entity @s[distance=3276.8..] run function random-respawn:core/spec/distance/tp/14