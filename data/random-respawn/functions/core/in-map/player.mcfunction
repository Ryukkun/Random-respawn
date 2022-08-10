# Load by random-respawn:core/main
# 
# マップ内にいるかどうかの通知
#-----------------------------------

tag @a[team=Player] remove F-In_Map

# Detect
execute if score $gm F-Temp matches 1 as @a[team=Player] at @s positioned ~-256 -80 ~-256 if entity @e[tag=map-center,dx=512,dy=100,dz=512] run tag @s add F-In_Map
execute if score $gm F-Temp matches 2 as @a[team=Player] at @s positioned ~-512 -80 ~-512 if entity @e[tag=map-center,dx=1024,dy=100,dz=1024] run tag @s add F-In_Map
execute if score $gm F-Temp matches 3 as @a[team=Player] at @s positioned ~-1024 -80 ~-1024 if entity @e[tag=map-center,dx=2048,dy=100,dz=2048] run tag @s add F-In_Map
execute if score $gm F-Temp matches 4 as @a[team=Player] at @s positioned ~-2048 -80 ~-2048 if entity @e[tag=map-center,dx=4096,dy=100,dz=4096] run tag @s add F-In_Map