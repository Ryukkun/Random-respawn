
scoreboard players operation $Distance F-MapCenter += $Distance F-MapCenter
execute if score $Distance F-MapCenter matches 0.. run function random-respawn:map-center/tp/18
execute if score $Distance F-MapCenter matches ..-1 positioned ^ ^ ^524288 run function random-respawn:map-center/tp/18
