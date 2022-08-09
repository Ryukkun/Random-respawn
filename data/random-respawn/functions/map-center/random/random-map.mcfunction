
# 考えるのめんどいから　気合ね
scoreboard players operation $random-mapX F-Temp = $random-map F-Temp
scoreboard players operation $random-mapX F-Temp %= $100 F-Temp
scoreboard players operation $random-mapZ F-Temp = $random-map F-Temp
scoreboard players operation $random-mapZ F-Temp /= $100 F-Temp

execute positioned -19800000 0 -19800000 run function random-respawn:map-center/random/loop_main

tp @s ~ ~ ~ ~ ~

# Num
scoreboard players add $random-map F-Temp 1
execute if score $random-map F-Temp matches 10000.. run scoreboard players set $random-map F-Temp 0
execute if score $random-map F-Temp matches 4949 run scoreboard players set $random-map F-Temp 4951
execute if score $random-map F-Temp matches 5049 run scoreboard players set $random-map F-Temp 5051