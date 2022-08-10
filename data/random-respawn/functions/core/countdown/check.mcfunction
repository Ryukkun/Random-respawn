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
execute if data storage random-respawn: {StartError:2b} run tellraw @a [{"text":"Error:2 mapが選択されてないよー"}]

#gm
execute unless score $gm F-Temp matches 1..4 run data merge storage random-respawn: {StartError:3b}
execute if data storage random-respawn: {StartError:3b} run tellraw @a [{"text":"  ","strikethrough":false},{"text":" ","color":"dark_red","strikethrough":true},{"text":"|","color":"dark_red","strikethrough":true},{"text":"|","color":"dark_red","strikethrough":false},{"text":" M","color":"#eb0505"},{"text":"A","color":"#ec0b0b"},{"text":"P","color":"#ee1111"},{"text":"の","color":"#ef1616"},{"text":"範","color":"#f11c1c"},{"text":"囲","color":"#f22222"},{"text":"を","color":"#f32727"},{"text":"設","color":"#f52d2d"},{"text":"定","color":"#f63333"},{"text":"し","color":"#f83838"},{"text":"て","color":"#f93e3e"},{"text":"下","color":"#fa4444"},{"text":"さ","color":"#fc4949"},{"text":"い","color":"#fd4f4f"},{"text":"。","color":"#ff5454"}]

#Filled Map
data merge storage random-respawn: {Setting:[{MapEnable:0b}]}
execute if score $gm F-Temp matches 1..3 if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:filled_map"}]} run data merge storage random-respawn: {Setting:[{MapEnable:1b}]}

#Sound
execute unless data storage random-respawn: {StartError:0b} run playsound minecraft:entity.player.breath master @a ~ ~ ~ 1 




#いいよ! スタートだ!  いっけええぇぇぇぇぇ-----------------------------------------------------------------------------------------------------
execute if data storage random-respawn: {StartError:0b} run function random-respawn:core/countdown/countdown-start