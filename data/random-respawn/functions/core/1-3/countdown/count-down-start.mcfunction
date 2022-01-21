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

#Filled Map
data merge storage random-respawn {Setting:[{MapEnable:0b}]}
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:filled_map"}]} run data merge storage random-respawn {Setting:[{MapEnable:1b}]}

#Spread Test
execute if data storage random-respawn {StartError:0b} run tellraw @s "拡散test 少々重くなります"
execute if data storage random-respawn {StartError:0b} run function random-respawn:core/1-3/spreadtest/spreadtest
execute if data storage random-respawn {StartError:0b} if data storage random-respawn {SpreadSuccess:0b} run data merge storage random-respawn {StartError:5b}
execute if data storage random-respawn {StartError:5b} run tellraw @a [{"text":"Error:5 拡散させるスペースが足りませんでした"}]

#Sound
execute unless data storage random-respawn {StartError:0b} run playsound minecraft:entity.player.breath master @a ~ ~ ~ 1 




#いいよ! スタートだ!  いっけええぇぇぇぇぇ------------------------------------------------------------------------------------------------------------------------------------------------------------

execute if data storage random-respawn {StartError:0b} run schedule function random-respawn:core/1-3/countdown/timer-start 5s append
execute if data storage random-respawn {StartError:0b} run schedule function random-respawn:core/countdown/1 4s append
execute if data storage random-respawn {StartError:0b} run schedule function random-respawn:core/countdown/2 3s append
execute if data storage random-respawn {StartError:0b} run schedule function random-respawn:core/countdown/3 2s append


# インベントリ取得

#### kill 一応
execute if data storage random-respawn {StartError:0b} run kill @e[tag=ILoveFilledMap]

#### reset storage
execute if data storage random-respawn {StartError:0b} run data remove storage minecraft:random-respawn FilledMap

#### Get filled_map
execute if data storage random-respawn {StartError:0b} if data storage random-respawn {Setting:[{MapEnable:1b}]} run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:-106b}]