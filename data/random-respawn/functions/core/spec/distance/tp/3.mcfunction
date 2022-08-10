execute if entity @s[distance=0.8..] run scoreboard players add @s F-Distance 8
execute if entity @s[distance=0.8..] positioned ^ ^ ^0.8 run function random-respawn:core/spec/distance/tp/2
execute unless entity @s[distance=0.8..] run function random-respawn:core/spec/distance/tp/2