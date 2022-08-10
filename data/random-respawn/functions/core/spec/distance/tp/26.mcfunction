execute if entity @s[distance=6710886.4..] run scoreboard players add @s F-Distance 67108864
execute if entity @s[distance=6710886.4..] positioned ^ ^ ^6710886.4 facing entity @s feet run function random-respawn:core/spec/distance/tp/25
execute unless entity @s[distance=6710886.4..] run function random-respawn:core/spec/distance/tp/25