# load by book 
# @s = Player
#-----------------------

#reset
data merge storage random-respawn: {StartError:0b}

#Player人数
function random-respawn:core/player-count
execute if score $PlayerCount F-Meet matches ..1 run data merge storage random-respawn: {StartError:1b}
execute if data storage random-respawn: {StartError:1b} run tellraw @a [{"text":"Error:1 人が足りないよー"}]

#Map Center
execute unless entity @e[tag=map-center] run data merge storage random-respawn: {StartError:2b}
execute if data storage random-respawn: {StartError:2b} run tellraw @a [{"text":"Error:2 map中心ないよー"}]

#gm
execute unless score $gm F-Temp matches 1..4 run data merge storage random-respawn: {StartError:3b}
execute if data storage random-respawn: {StartError:3b} run tellraw @a [{"text":"Error:3 gm"}]

#Filled Map
data merge storage random-respawn: {Setting:[{MapEnable:0b}]}
execute if score $gm F-Temp matches 1..3 if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:filled_map"}]} run data merge storage random-respawn: {Setting:[{MapEnable:1b}]}

#Sound
execute unless data storage random-respawn: {StartError:0b} run playsound minecraft:entity.player.breath master @a ~ ~ ~ 1 




#いいよ! スタートだ!  いっけええぇぇぇぇぇ-----------------------------------------------------------------------------------------------------
execute if data storage random-respawn: {StartError:0b} run function random-respawn:core/countdown/countdown-start