execute if score $Distance F-MapCenter matches ..-5 at @s run tp ^ ^ ^-5
execute if score $Distance F-MapCenter matches ..-5 run scoreboard players add $Distance F-MapCenter 5
execute if score $Distance F-MapCenter matches ..-5 run function random-respawn:map-center/tp/-5