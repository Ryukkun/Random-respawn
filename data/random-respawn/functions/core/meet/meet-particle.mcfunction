# load by random-respawn:core/meet-detect
# @s = 10m以内に他人{team=Player} がいる
#----------------------------------------------

#particle
execute at @s at @a[distance=0.00001..] if entity @s[distance=10..] run particle dust 1 0.1 0 1 ~ ~2.5 ~ 0 0 0 5 5 normal @s
execute at @s at @a[distance=0.00001..] if entity @s[distance=..10] run particle dust 0.5 1 0 1 ~ ~2.5 ~ 0 0 0 5 5 normal @s

