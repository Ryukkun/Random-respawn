data modify storage random-respawn MeetSuccess set value 0b
execute as @s at @s at @a[distance=0.001..] if entity @s[distance=10..] store success storage random-respawn MeetSuccess byte 1 run particle dust 1 0.3 0 1 ~ ~2.5 ~ 0 0 0 10 10 normal @s
execute as @s at @s at @a[distance=0.001..] if entity @s[distance=..10] run particle dust 0.5 1 0 1 ~ ~2.5 ~ 0 0 0 10 10 normal @s

execute if data storage random-respawn {MeetSuccess:0b} if score $Timer F-Timer matches 1.. run function random-respawn:core/meet-success