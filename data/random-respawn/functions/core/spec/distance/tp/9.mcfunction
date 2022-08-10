execute if entity @s[distance=51.2..] run scoreboard players add @s F-Distance 512
execute if entity @s[distance=51.2..] positioned ^ ^ ^51.2 run function random-respawn:core/spec/distance/tp/8
execute unless entity @s[distance=51.2..] run function random-respawn:core/spec/distance/tp/8