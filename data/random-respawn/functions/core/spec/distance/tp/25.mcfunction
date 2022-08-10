execute if entity @s[distance=3355443.2..] run scoreboard players add @s F-Distance 33554432
execute if entity @s[distance=3355443.2..] positioned ^ ^ ^3355443.2 facing entity @s feet run function random-respawn:core/spec/distance/tp/24
execute unless entity @s[distance=3355443.2..] run function random-respawn:core/spec/distance/tp/24