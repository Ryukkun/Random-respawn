execute if score $Distance F-MapCenter matches 1000.. at @s run tp ^ ^ ^1000
execute if score $Distance F-MapCenter matches 1000.. run scoreboard players remove $Distance F-MapCenter 1000
execute if score $Distance F-MapCenter matches 1000.. run function random-respawn:map-center/marker/1000


execute if score $Distance F-MapCenter matches ..-1000 at @s run tp ^ ^ ^-1000
execute if score $Distance F-MapCenter matches ..-1000 run scoreboard players add $Distance F-MapCenter 1000
execute if score $Distance F-MapCenter matches ..-1000 run function random-respawn:map-center/marker/1000