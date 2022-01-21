# load by book 
# @s = Player
#-----------------------

#reset
data merge storage random-respawn {StartError:0b}

#Player人数
function random-respawn:core/player-count
execute if score $PlayerCount F-Meet matches ..1 run data merge storage random-respawn {StartError:1b}
execute if data storage random-respawn {StartError:1b} run tellraw @a [{"text":"Error:1 人が足りないよー"}]

#Map Center
execute unless entity @e[tag=map-center] run data merge storage random-respawn {StartError:2b}
execute if data storage random-respawn {StartError:2b} run tellraw @a [{"text":"Error:2 map中心ないよー"}]

#gm
execute unless score $gm F-Temp matches 1..4 run data merge storage random-respawn {StartError:3b}
execute if data storage random-respawn {StartError:3b} run tellraw @a [{"text":"Error:3 GM"}]

#Sound
execute unless data storage random-respawn {StartError:0b} run playsound minecraft:entity.player.breath master @a ~ ~ ~ 1 




#いいよ! スタートだ!  いっけええぇぇぇぇぇ------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if data storage random-respawn {StartError:0b} run schedule function random-respawn:core/4/countdown/timer-start 5s append
execute if data storage random-respawn {StartError:0b} run schedule function random-respawn:core/countdown/1 4s append
execute if data storage random-respawn {StartError:0b} run schedule function random-respawn:core/countdown/2 3s append
execute if data storage random-respawn {StartError:0b} run schedule function random-respawn:core/countdown/3 2s append