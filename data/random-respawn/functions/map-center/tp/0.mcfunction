
scoreboard players operation $Distance F-MapCenter += $Distance F-MapCenter
execute if score $Distance F-MapCenter matches 0.. run tp @s ~ ~ ~
execute if score $Distance F-MapCenter matches ..-1 positioned ^ ^ ^1 run function random-respawn:map-center/_calc_loop
