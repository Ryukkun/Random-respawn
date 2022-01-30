execute if score $Distance F-MapCenter matches ..-25 at @s run tp ^ ^ ^-25
execute if score $Distance F-MapCenter matches ..-25 run scoreboard players add $Distance F-MapCenter 25
execute if score $Distance F-MapCenter matches ..-25 run function random-respawn:map-center/tp/-25