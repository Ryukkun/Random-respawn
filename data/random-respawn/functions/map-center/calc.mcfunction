# load by random-respawn:map-center/main
#@s = 本から実行した人
#$gm  1=512 2=1024 3=2048 4=4096
#-------------------------------------------------------------------------------------------

# 1
execute if score $gm F-Temp matches 1 positioned ~64 ~ ~64 align xz positioned ~0.5 ~ ~0.5 positioned ~-128 ~ ~-128 positioned ~1152921504636846976 ~ ~1152921504636846976 positioned ~-1152921504636846976 ~ ~-1152921504636846976 positioned ~-64 ~ ~-64 run function random-respawn:map-center/summon

# 2
execute if score $gm F-Temp matches 2 positioned ~64 ~ ~64 align xz positioned ~0.5 ~ ~0.5 positioned ~-256 ~ ~-256 positioned ~2305843009243693952 ~ ~2305843009243693952 positioned ~-2305843009243693952 ~ ~-2305843009243693952 positioned ~-64 ~ ~-64 run function random-respawn:map-center/summon

# 3 ~ 4
execute if score $gm F-Temp matches 3..4 run function random-respawn:map-center/_calc