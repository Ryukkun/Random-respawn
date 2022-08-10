#   load by random:respawn:core/actionbar
#
#   近くのプレイヤーまでの距離
#   @s = 実行者   @p = 実行者から一番近いPlayer
#------------------------------------------------------



#### X,Y,Z軸 の 距離取得

execute store result score @s F-Distance run data get entity @s Pos[0] 10
execute as @p[distance=..0.0001] store result score @s F-Distance run data get entity @s Pos[0] 10
scoreboard players operation @s F-Distance -= @p[distance=..0.0001] F-Distance
scoreboard players operation @s F-Distance *= @s F-Distance

execute store result score $ F-Distance run data get entity @s Pos[1] 10
execute as @p[distance=..0.0001] store result score @s F-Distance run data get entity @s Pos[1] 10
scoreboard players operation $ F-Distance -= @p[distance=..0.0001] F-Distance
scoreboard players operation $ F-Distance *= $ F-Distance
scoreboard players operation @s F-Distance += $ F-Distance

execute store result score $ F-Distance run data get entity @s Pos[2] 10
execute as @p[distance=..0.0001] store result score @s F-Distance run data get entity @s Pos[2] 10
scoreboard players operation $ F-Distance -= @p[distance=..0.0001] F-Distance
scoreboard players operation $ F-Distance *= $ F-Distance
scoreboard players operation @s F-Distance += $ F-Distance


#### 仕上げ

function random-respawn:core/spec/distance/calc