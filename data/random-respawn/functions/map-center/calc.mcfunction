# load by random-respawn:map-center/main
#@s = 本から実行した人
#$gm  1=512 2=1024 3=2048 4=4096
#-------------------------------------------------------------------------------------------

# map-centerの座標
### x
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

#----------------------------------------

### z
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

# 移動距離計算
execute store result score $PlayerX F-MapCenter run data get entity @s Pos[0]
execute store result score $PlayerZ F-MapCenter run data get entity @s Pos[2]
scoreboard players operation $DistanceX F-MapCenter = $MapCenterX F-MapCenter
scoreboard players operation $DistanceZ F-MapCenter = $MapCenterZ F-MapCenter
scoreboard players operation $DistanceX F-MapCenter -= $PlayerX F-MapCenter
scoreboard players operation $DistanceZ F-MapCenter -= $PlayerZ F-MapCenter

#------------------------------------------------------------------------------------------------------

# TP
### X
execute unless score $DistanceX F-MapCenter matches 0 run scoreboard players operation $Distance F-MapCenter = $DistanceX F-MapCenter
execute unless score $DistanceX F-MapCenter matches 0 run tp @s ~ ~ ~ -90 0
execute unless score $DistanceX F-MapCenter matches 0 run function random-respawn:map-center/tp/main

### Z
execute unless score $DistanceZ F-MapCenter matches 0 run scoreboard players operation $Distance F-MapCenter = $DistanceZ F-MapCenter
execute unless score $DistanceZ F-MapCenter matches 0 at @s run tp @s ~ ~ ~ 0 0
execute unless score $DistanceZ F-MapCenter matches 0 run function random-respawn:map-center/tp/main

#------------------------------------------------------------------------------------------------------


# map-center設置
execute at @s align xz run summon minecraft:armor_stand ~ -70 ~ {NoGravity:1b,Silent:1b,Marker:1b,Tags:["map-center"]}
execute at @s run forceload add ~ ~


# 戻る
tp @s ~ ~ ~ ~ ~