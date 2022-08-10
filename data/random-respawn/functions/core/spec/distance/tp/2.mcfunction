execute if entity @s[distance=0.4..] run scoreboard players add @s F-Distance 4
execute if entity @s[distance=0.4..] positioned ^ ^ ^0.4 run function random-respawn:core/spec/distance/tp/1
execute unless entity @s[distance=0.4..] run function random-respawn:core/spec/distance/tp/1