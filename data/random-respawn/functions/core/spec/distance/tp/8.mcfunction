execute if entity @s[distance=25.6..] run scoreboard players add @s F-Distance 256
execute if entity @s[distance=25.6..] positioned ^ ^ ^25.6 run function random-respawn:core/spec/distance/tp/7
execute unless entity @s[distance=25.6..] run function random-respawn:core/spec/distance/tp/7