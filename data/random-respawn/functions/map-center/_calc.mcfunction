# load by random-respawn:map-center/_calc
# pos : 0,0,0
#---------------------------------------

# 現在位置取得
execute store result score $MapCenterX F-MapCenter run data get entity @s Pos[0]
execute store result score $MapCenterZ F-MapCenter run data get entity @s Pos[2]

# map-centerの座標
### x
scoreboard players operation $MapCenterX F-MapCenter += $64 F-Temp
scoreboard players operation $MapCenterX2 F-MapCenter = $MapCenterX F-MapCenter
execute if score $gm F-Temp matches 3 run scoreboard players operation $MapCenterX2 F-MapCenter %= $2048 F-Temp
execute if score $gm F-Temp matches 4 run scoreboard players operation $MapCenterX2 F-MapCenter %= $4096 F-Temp


scoreboard players operation $MapCenterX F-MapCenter -= $MapCenterX2 F-MapCenter
execute if score $gm F-Temp matches 3 run scoreboard players operation $MapCenterX F-MapCenter += $1024 F-Temp
execute if score $gm F-Temp matches 4 run scoreboard players operation $MapCenterX F-MapCenter += $2048 F-Temp
scoreboard players operation $MapCenterX F-MapCenter -= $64 F-Temp

#----------------------------------------

### z
scoreboard players operation $MapCenterZ F-MapCenter += $64 F-Temp
scoreboard players operation $MapCenterZ2 F-MapCenter = $MapCenterZ F-MapCenter
execute if score $gm F-Temp matches 3 run scoreboard players operation $MapCenterZ2 F-MapCenter %= $2048 F-Temp
execute if score $gm F-Temp matches 4 run scoreboard players operation $MapCenterZ2 F-MapCenter %= $4096 F-Temp


scoreboard players operation $MapCenterZ F-MapCenter -= $MapCenterZ2 F-MapCenter
execute if score $gm F-Temp matches 3 run scoreboard players operation $MapCenterZ F-MapCenter += $1024 F-Temp
execute if score $gm F-Temp matches 4 run scoreboard players operation $MapCenterZ F-MapCenter += $2048 F-Temp
scoreboard players operation $MapCenterZ F-MapCenter -= $64 F-Temp

#--------------------------------------------------------------------------------------------

scoreboard players set $loop F-MapCenter 0
function random-respawn:map-center/_calc_loop