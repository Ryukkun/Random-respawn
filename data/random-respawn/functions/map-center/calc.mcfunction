# load by random-respawn:map-center/main
#@s = 本から実行した人
#$gm  1=512 2=1024 3=2048 4=4096
#---------------------------------

#x
scoreboard players operation $MapCenterX F-MapCenter += $64 F-Temp
scoreboard players operation $MapCenterX2 F-MapCenter = $MapCenterX F-MapCenter
execute if score $gm F-Temp matches 1 run scoreboard players operation $MapCenterX2 F-MapCenter %= $512 F-Temp
execute if score $gm F-Temp matches 2 run scoreboard players operation $MapCenterX2 F-MapCenter %= $1024 F-Temp
execute if score $gm F-Temp matches 3 run scoreboard players operation $MapCenterX2 F-MapCenter %= $2048 F-Temp
execute if score $gm F-Temp matches 4 run scoreboard players operation $MapCenterX2 F-MapCenter %= $4096 F-Temp


scoreboard players operation $MapCenterX F-MapCenter -= $MapCenterX2 F-MapCenter
execute if score $gm F-Temp matches 1 run scoreboard players operation $MapCenterX F-MapCenter += $256 F-Temp
execute if score $gm F-Temp matches 2 run scoreboard players operation $MapCenterX F-MapCenter += $512 F-Temp
execute if score $gm F-Temp matches 3 run scoreboard players operation $MapCenterX F-MapCenter += $1024 F-Temp
execute if score $gm F-Temp matches 4 run scoreboard players operation $MapCenterX F-MapCenter += $2048 F-Temp
scoreboard players operation $MapCenterX F-MapCenter -= $64 F-Temp

#-------------------------------------------------------------------------------------------

#z
scoreboard players operation $MapCenterZ F-MapCenter += $64 F-Temp
scoreboard players operation $MapCenterZ2 F-MapCenter = $MapCenterZ F-MapCenter
execute if score $gm F-Temp matches 1 run scoreboard players operation $MapCenterZ2 F-MapCenter %= $512 F-Temp
execute if score $gm F-Temp matches 2 run scoreboard players operation $MapCenterZ2 F-MapCenter %= $1024 F-Temp
execute if score $gm F-Temp matches 3 run scoreboard players operation $MapCenterZ2 F-MapCenter %= $2048 F-Temp
execute if score $gm F-Temp matches 4 run scoreboard players operation $MapCenterZ2 F-MapCenter %= $4096 F-Temp


scoreboard players operation $MapCenterZ F-MapCenter -= $MapCenterZ2 F-MapCenter
execute if score $gm F-Temp matches 1 run scoreboard players operation $MapCenterZ F-MapCenter += $256 F-Temp
execute if score $gm F-Temp matches 2 run scoreboard players operation $MapCenterZ F-MapCenter += $512 F-Temp
execute if score $gm F-Temp matches 3 run scoreboard players operation $MapCenterZ F-MapCenter += $1024 F-Temp
execute if score $gm F-Temp matches 4 run scoreboard players operation $MapCenterZ F-MapCenter += $2048 F-Temp
scoreboard players operation $MapCenterZ F-MapCenter -= $64 F-Temp

#--------------------------------------------------------------------------------------------

#armor_stand設置
execute at @e[tag=map-center] run forceload remove ~ ~
kill @e[tag=map-center]
function random-respawn:map-center/marker/main