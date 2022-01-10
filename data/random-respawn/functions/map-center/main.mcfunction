#実行者がいるmapの中心にアーマースタンドを設置
#$gm  1=512 2=1024 3=2048 4=4096
#---------------------------------


execute store result score $MapCenterX F-MapCenter run data get entity @s Pos[0]
execute store result score $MapCenterZ F-MapCenter run data get entity @s Pos[2]

execute unless score $gm F-Temp matches 1..4 run tellraw @s [{"text":"  ","strikethrough":false},{"text":" ","color":"dark_red","strikethrough":true},{"text":"|","color":"dark_red","strikethrough":true},{"text":"|","color":"dark_red","strikethrough":false},{"text":" M","color":"#eb0505"},{"text":"A","color":"#ec0b0b"},{"text":"P","color":"#ee1111"},{"text":"の","color":"#ef1616"},{"text":"範","color":"#f11c1c"},{"text":"囲","color":"#f22222"},{"text":"を","color":"#f32727"},{"text":"設","color":"#f52d2d"},{"text":"定","color":"#f63333"},{"text":"し","color":"#f83838"},{"text":"て","color":"#f93e3e"},{"text":"下","color":"#fa4444"},{"text":"さ","color":"#fc4949"},{"text":"い","color":"#fd4f4f"},{"text":"。","color":"#ff5454"}]

execute if score $gm F-Temp matches 1..4 run function random-respawn:map-center/calc