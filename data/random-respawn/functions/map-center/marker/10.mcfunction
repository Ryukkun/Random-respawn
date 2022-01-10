execute if score $Distance F-MapCenter matches 10.. at @s run tp ^ ^ ^10
execute if score $Distance F-MapCenter matches 10.. run scoreboard players remove $Distance F-MapCenter 10
execute if score $Distance F-MapCenter matches 10.. run function random-respawn:map-center/marker/10


execute if score $Distance F-MapCenter matches ..-10 at @s run tp ^ ^ ^-10
execute if score $Distance F-MapCenter matches ..-10 run scoreboard players add $Distance F-MapCenter 10
execute if score $Distance F-MapCenter matches ..-10 run function random-respawn:map-center/marker/10