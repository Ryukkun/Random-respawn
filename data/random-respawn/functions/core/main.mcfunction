# load from random-respawn:tick
# ゲーム中常にload
#---------------------

# timer
function random-respawn:core/timer

# meet
function random-respawn:core/meet/meet-detect

# FilledMap + SP
execute if score $StopW F-Timer matches 0..600 run function random-respawn:core/1-3/filledmap/schedule

# finish Time Out
execute if score $Timer F-Timer matches 0 run function random-respawn:core/finish/finish-time-out