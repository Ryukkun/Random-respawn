execute if entity @s[distance=12.8..] run scoreboard players add @s F-Distance 128
execute if entity @s[distance=12.8..] positioned ^ ^ ^12.8 run function random-respawn:core/spec/distance/tp/6
execute unless entity @s[distance=12.8..] run function random-respawn:core/spec/distance/tp/6