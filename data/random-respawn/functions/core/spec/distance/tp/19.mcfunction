execute if entity @s[distance=52428.8..] run scoreboard players add @s F-Distance 524288
execute if entity @s[distance=52428.8..] positioned ^ ^ ^52428.8 facing entity @s feet run function random-respawn:core/spec/distance/tp/18
execute unless entity @s[distance=52428.8..] run function random-respawn:core/spec/distance/tp/18