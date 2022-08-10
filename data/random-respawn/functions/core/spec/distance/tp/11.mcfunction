execute if entity @s[distance=204.8..] run scoreboard players add @s F-Distance 2048
execute if entity @s[distance=204.8..] positioned ^ ^ ^204.8 facing entity @s feet run function random-respawn:core/spec/distance/tp/10
execute unless entity @s[distance=204.8..] run function random-respawn:core/spec/distance/tp/10