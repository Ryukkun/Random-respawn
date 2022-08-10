execute if entity @s[distance=6.4..] run scoreboard players add @s F-Distance 64
execute if entity @s[distance=6.4..] positioned ^ ^ ^6.4 run function random-respawn:core/spec/distance/tp/5
execute unless entity @s[distance=6.4..] run function random-respawn:core/spec/distance/tp/5