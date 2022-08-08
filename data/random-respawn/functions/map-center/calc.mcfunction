# load by random-respawn:map-center/main
#@s = 本から実行した人
#$gm  1=512 2=1024 3=2048 4=4096
#-------------------------------------------------------------------------------------------

execute if score $gm F-Temp matches 1..4 at @e[tag=map-center] run forceload remove ~ ~
execute if score $gm F-Temp matches 1..4 run kill @e[tag=map-center]

# 1
execute if score $gm F-Temp matches 1 positioned ~64 ~ ~64 align xz positioned ~0.5 ~ ~0.5 positioned ~-256 ~ ~-256 positioned ~2305843009243693952 ~ ~2305843009243693952 positioned ~-2305843009243693952 ~ ~-2305843009243693952 positioned ~-64 ~ ~-64 positioned ~256 ~ ~256 run function random-respawn:map-center/summon

# 2
execute if score $gm F-Temp matches 2 positioned ~64 ~ ~64 align xz positioned ~0.5 ~ ~0.5 positioned ~-512 ~ ~-512 positioned ~4611686018457387904 ~ ~4611686018457387904 positioned ~-4611686018457387904 ~ ~-4611686018457387904 positioned ~-64 ~ ~-64 positioned ~512 ~ ~512 run function random-respawn:map-center/summon

# 3 ~ 4
execute if score $gm F-Temp matches 3..4 run function random-respawn:map-center/_calc