execute if score $random-mapX F-Temp matches 1.. rotated -90 0 run function random-respawn:map-center/random/loop_x

execute if score $random-mapZ F-Temp matches 1.. rotated 0 0 run function random-respawn:map-center/random/loop_z

execute if score $random-mapX F-Temp matches 0 if score $random-mapZ F-Temp matches 0 run function random-respawn:map-center/random/spread