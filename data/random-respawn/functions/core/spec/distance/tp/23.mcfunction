execute if entity @s[distance=838860.8..] run scoreboard players add @s F-Distance 8388608
execute if entity @s[distance=838860.8..] positioned ^ ^ ^838860.8 facing entity @s feet run function random-respawn:core/spec/distance/tp/22
execute unless entity @s[distance=838860.8..] run function random-respawn:core/spec/distance/tp/22