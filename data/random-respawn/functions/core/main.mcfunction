# load from random-respawn:tick
# ゲーム中常にload
#---------------------

# timer
function random-respawn:core/timer

# meet
function random-respawn:core/meet/meet-detect

# 初期リスに戻った時
execute as @a[team=Player] at @s unless data entity @s SpawnX run function random-respawn:core/sp/tp-sp

# finish Time Out
execute if score $Timer F-Timer matches 0 run function random-respawn:core/finish/finish-time-out

# FilledMap
item replace entity @a[team=Player] armor.head from entity @e[tag=map-center,limit=1] armor.head
#/spreadplayers 0 0 0 25000000 false @s