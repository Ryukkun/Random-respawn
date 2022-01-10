#tick
#----------

#Count Down
execute if score $CountDown F-Timer matches 0.. run function random-respawn:core/count-down

#timer
execute if score $Timer F-Timer matches 1.. run function random-respawn:core/timer
