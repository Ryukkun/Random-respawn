execute if entity @s[distance=26214.4..] run scoreboard players add @s F-Distance 262144
execute if entity @s[distance=26214.4..] positioned ^ ^ ^26214.4 facing entity @s feet run function random-respawn:core/spec/distance/tp/17
execute unless entity @s[distance=26214.4..] run function random-respawn:core/spec/distance/tp/17