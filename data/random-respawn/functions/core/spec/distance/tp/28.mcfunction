execute if entity @s[distance=26843545.6..] run scoreboard players add @s F-Distance 268435456
execute if entity @s[distance=26843545.6..] positioned ^ ^ ^26843545.6 facing entity @s feet run function random-respawn:core/spec/distance/tp/27
execute unless entity @s[distance=26843545.6..] run function random-respawn:core/spec/distance/tp/27