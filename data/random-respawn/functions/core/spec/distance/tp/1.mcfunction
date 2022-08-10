execute if entity @s[distance=0.2..] run scoreboard players add @s F-Distance 2
execute if entity @s[distance=0.2..] positioned ^ ^ ^0.2 run function random-respawn:core/spec/distance/tp/0
execute unless entity @s[distance=0.2..] run function random-respawn:core/spec/distance/tp/0