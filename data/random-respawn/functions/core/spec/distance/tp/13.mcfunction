execute if entity @s[distance=819.2..] run scoreboard players add @s F-Distance 8192
execute if entity @s[distance=819.2..] positioned ^ ^ ^819.2 facing entity @s feet run function random-respawn:core/spec/distance/tp/12
execute unless entity @s[distance=819.2..] run function random-respawn:core/spec/distance/tp/12