execute if entity @s[distance=3.2..] run scoreboard players add @s F-Distance 32
execute if entity @s[distance=3.2..] positioned ^ ^ ^3.2 run function random-respawn:core/spec/distance/tp/4
execute unless entity @s[distance=3.2..] run function random-respawn:core/spec/distance/tp/4