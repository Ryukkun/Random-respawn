execute if score $Distance F-MapCenter matches 1000.. run function random-respawn:map-center/marker/1000
execute if score $Distance F-MapCenter matches 100.. run function random-respawn:map-center/marker/100
execute if score $Distance F-MapCenter matches 10.. run function random-respawn:map-center/marker/10
execute if score $Distance F-MapCenter matches 1.. run function random-respawn:map-center/marker/1


execute if score $Distance F-MapCenter matches ..-1000 run function random-respawn:map-center/marker/1000
execute if score $Distance F-MapCenter matches ..-100 run function random-respawn:map-center/marker/100
execute if score $Distance F-MapCenter matches ..-10 run function random-respawn:map-center/marker/10
execute if score $Distance F-MapCenter matches ..-1 run function random-respawn:map-center/marker/1