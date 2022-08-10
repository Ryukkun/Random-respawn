execute if entity @s[distance=209715.2..] run scoreboard players add @s F-Distance 2097152
execute if entity @s[distance=209715.2..] positioned ^ ^ ^209715.2 facing entity @s feet run function random-respawn:core/spec/distance/tp/20
execute unless entity @s[distance=209715.2..] run function random-respawn:core/spec/distance/tp/20