execute if entity @s[distance=13421772.8..] run scoreboard players add @s F-Distance 134217728
execute if entity @s[distance=13421772.8..] positioned ^ ^ ^13421772.8 facing entity @s feet run function random-respawn:core/spec/distance/tp/26
execute unless entity @s[distance=13421772.8..] run function random-respawn:core/spec/distance/tp/26