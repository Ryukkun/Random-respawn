
scoreboard players operation $Distance F-MapCenter += $Distance F-MapCenter
execute if score $Distance F-MapCenter matches 0.. run function random-respawn:map-center/tp/17
execute if score $Distance F-MapCenter matches ..-1 positioned ^ ^ ^262144 run function random-respawn:map-center/tp/17
