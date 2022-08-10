execute if entity @s[distance=53687091.2..] run scoreboard players add @s F-Distance 536870912
execute if entity @s[distance=53687091.2..] positioned ^ ^ ^53687091.2 facing entity @s feet run function random-respawn:core/spec/distance/tp/28
execute unless entity @s[distance=53687091.2..] run function random-respawn:core/spec/distance/tp/28