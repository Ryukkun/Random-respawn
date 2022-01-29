# load from random-respawn:tick
# ゲーム中常にload
#---------------------

# timer
function random-respawn:core/timer

# meet
function random-respawn:core/meet/meet-detect

# 初期リスに戻った時
execute as @a[team=Player] at @s unless data entity @s SpawnX run function random-respawn:core/sp/tp-sp

# FilledMap
execute if score $StopW F-Timer matches 0..600 if data storage random-respawn {Setting:{MapEnable:1b}} run function random-respawn:core/1-3/filledmap/schedule

# finish Time Out
execute if score $Timer F-Timer matches 0 run function random-respawn:core/finish/finish-time-out

#/spreadplayers 0 0 0 25000000 false @s