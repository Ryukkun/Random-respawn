
scoreboard players operation $Distance F-MapCenter += $Distance F-MapCenter
execute if score $Distance F-MapCenter matches 0.. run function random-respawn:map-center/tp/26
execute if score $Distance F-MapCenter matches ..-1 positioned ^ ^ ^134217728 run function random-respawn:map-center/tp/26
