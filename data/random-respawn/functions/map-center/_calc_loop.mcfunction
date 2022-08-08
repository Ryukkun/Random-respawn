scoreboard players add $loop F-MapCenter 1

# TP
### X
execute if score $loop F-MapCenter matches 1 unless score $MapCenterX F-MapCenter matches 0 run scoreboard players operation $Distance F-MapCenter = $MapCenterX F-MapCenter
execute if score $loop F-MapCenter matches 1 unless score $MapCenterX F-MapCenter matches 0 positioned 0 0 0 rotated -90 0 run function random-respawn:map-center/tp/main

### Z
execute if score $loop F-MapCenter matches 2 unless score $MapCenterZ F-MapCenter matches 0 run scoreboard players operation $Distance F-MapCenter = $MapCenterZ F-MapCenter
execute if score $loop F-MapCenter matches 2 unless score $MapCenterZ F-MapCenter matches 0 rotated 0 0 run function random-respawn:map-center/tp/main


# map-center設置
execute if score $loop F-MapCenter matches 3 unless entity @e[tag=map-center] run function random-respawn:map-center/summon