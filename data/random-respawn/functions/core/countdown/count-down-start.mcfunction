# load by book 
# @s = Player
#-----------------------



# GMによってファイル変更

execute if score $gm F-Temp matches 1..3 run function random-respawn:core/1-3/countdown/count-down-start
execute if score $gm F-Temp matches 4 run function random-respawn:core/4/countdown/count-down-start