# load by random-respawn:core/meet-detect
# @s = team=Player
#----------------------------------------------

#particle
execute at @a[distance=0.0001..] if entity @s[distance=10..] run particle dust 1 0.1 0 1 ~ ~2.5 ~ 0 0 0 5 5 normal @s
execute at @a[distance=0.0001..] if entity @s[distance=..10] run particle dust 0.5 1 0 1 ~ ~2.5 ~ 0 0 0 5 5 normal @s