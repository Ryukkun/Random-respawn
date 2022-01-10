execute if score $Distance F-MapCenter matches 100.. at @s run tp ^ ^ ^100
execute if score $Distance F-MapCenter matches 100.. run scoreboard players remove $Distance F-MapCenter 100
execute if score $Distance F-MapCenter matches 100.. run function random-respawn:map-center/marker/100


execute if score $Distance F-MapCenter matches ..-100 at @s run tp ^ ^ ^-100
execute if score $Distance F-MapCenter matches ..-100 run scoreboard players add $Distance F-MapCenter 100
execute if score $Distance F-MapCenter matches ..-100 run function random-respawn:map-center/marker/100