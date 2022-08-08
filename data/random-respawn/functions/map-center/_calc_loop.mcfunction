scoreboard players add $loop F-MapCenter 1

# TP
### X
execute if score $loop F-MapCenter matches 1 unless score $DistanceX F-MapCenter matches 0 run scoreboard players operation $Distance F-MapCenter = $DistanceX F-MapCenter
execute if score $loop F-MapCenter matches 1 unless score $DistanceX F-MapCenter matches 0 positioned 0 0 0 rotated -90 0 run function random-respawn:map-center/tp/main

### Z
execute if score $loop F-MapCenter matches 2 unless score $DistanceZ F-MapCenter matches 0 run scoreboard players operation $Distance F-MapCenter = $DistanceZ F-MapCenter
execute if score $loop F-MapCenter matches 2 unless score $DistanceZ F-MapCenter matches 0 rotated 0 0 run function random-respawn:map-center/tp/main


# map-center設置
execute if score $loop F-MapCenter matches 3 run function random-respawn:map-center/summon