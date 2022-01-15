# load from random-respawn:tick
# ゲーム中常にload
#---------------------

#timer
function random-respawn:core/timer

#meet
function random-respawn:core/meet/meet-detect

#finish Time Out
execute if score $Timer F-Timer matches 0 run function random-respawn:core/finish/finish-time-out