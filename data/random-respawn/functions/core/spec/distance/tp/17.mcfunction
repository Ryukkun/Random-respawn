execute if entity @s[distance=13107.2..] run scoreboard players add @s F-Distance 131072
execute if entity @s[distance=13107.2..] positioned ^ ^ ^13107.2 facing entity @s feet run function random-respawn:core/spec/distance/tp/16
execute unless entity @s[distance=13107.2..] run function random-respawn:core/spec/distance/tp/16