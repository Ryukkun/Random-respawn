#load by random-respawn:tick
#-------------------------------------------------

scoreboard players remove $Timer F-Timer 1


#Min
scoreboard players operation $Min F-Timer = $Timer F-Timer
scoreboard players operation $Min F-Timer += $19 F-Temp
scoreboard players operation $Min F-Timer /= $1200 F-Temp


#Sec
scoreboard players operation $Sec F-Timer = $Timer F-Timer
scoreboard players operation $Sec F-Timer += $19 F-Temp
scoreboard players operation $Sec F-Timer %= $1200 F-Temp
scoreboard players operation $Sec F-Timer /= $20 F-Temp

#sec 1の位
scoreboard players reset $0 F-Timer
execute if score $Sec F-Timer matches 0..9 run scoreboard players set $0 F-Timer 0



title @a actionbar [{"score":{"name":"$Min","objective":"F-Timer"}},{"text":":"},{"score":{"name":"$0","objective":"F-Timer"}},{"score":{"name":"$Sec","objective":"F-Timer"}}]