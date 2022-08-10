execute if entity @s[distance=1.6..] run scoreboard players add @s F-Distance 16
execute if entity @s[distance=1.6..] positioned ^ ^ ^1.6 run function random-respawn:core/spec/distance/tp/3
execute unless entity @s[distance=1.6..] run function random-respawn:core/spec/distance/tp/3