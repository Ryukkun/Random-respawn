#   load by random:respawn:core/actionbar
#
#   近くのプレイヤーまでの距離
#   @s = 実行者   @p = 実行者から一番近いPlayer
#------------------------------------------------------



#### 気合の二部探索

scoreboard players set @s F-Distance 0
execute facing entity @s feet positioned ^ ^ ^-0.000000001 run function random-respawn:core/spec/distance/tp/29