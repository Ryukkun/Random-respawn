execute if score $Distance F-MapCenter matches 1.. at @s run tp ^ ^ ^1
execute if score $Distance F-MapCenter matches 1.. run scoreboard players remove $Distance F-MapCenter 1
execute if score $Distance F-MapCenter matches 1.. run function random-respawn:map-center/marker/1


execute if score $Distance F-MapCenter matches ..-1 at @s run tp ^ ^ ^-1
execute if score $Distance F-MapCenter matches ..-1 run scoreboard players add $Distance F-MapCenter 1
execute if score $Distance F-MapCenter matches ..-1 run function random-respawn:map-center/marker/1