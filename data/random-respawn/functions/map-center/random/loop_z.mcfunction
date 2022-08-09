scoreboard players remove $random-mapZ F-Temp 1
execute if score $random-mapZ F-Temp matches 0 positioned ^ ^ ^400000 run function random-respawn:map-center/random/loop_main
execute if score $random-mapZ F-Temp matches 1.. positioned ^ ^ ^400000 run function random-respawn:map-center/random/loop_z