execute if entity @s[distance=419430.4..] run scoreboard players add @s F-Distance 4194304
execute if entity @s[distance=419430.4..] positioned ^ ^ ^419430.4 facing entity @s feet run function random-respawn:core/spec/distance/tp/21
execute unless entity @s[distance=419430.4..] run function random-respawn:core/spec/distance/tp/21