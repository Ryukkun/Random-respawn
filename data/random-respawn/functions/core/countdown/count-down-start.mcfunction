# load by book 
# @s = Player
#-----------------------



# gmによってファイル変更
execute unless score $gm F-Temp matches 1..4 run tellraw @a [{"text":"Error:3 gm"}]
execute if score $gm F-Temp matches 1..3 run function random-respawn:core/1-3/countdown/check
execute if score $gm F-Temp matches 4 run function random-respawn:core/4/countdown/check