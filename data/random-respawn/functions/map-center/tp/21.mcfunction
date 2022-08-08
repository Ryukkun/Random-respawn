
scoreboard players operation $Distance F-MapCenter += $Distance F-MapCenter
execute if score $Distance F-MapCenter matches 0.. run function random-respawn:map-center/tp/20
execute if score $Distance F-MapCenter matches ..-1 positioned ^ ^ ^2097152 run function random-respawn:map-center/tp/20
