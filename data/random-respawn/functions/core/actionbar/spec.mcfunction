function random-respawn:core/spec/distance/main
scoreboard players operation $ F-Distance = @s F-Distance
scoreboard players operation $ F-Distance %= $10 F-Temp
scoreboard players operation @s F-Distance /= $10 F-Temp

title @a[tag=F-In_Map,team=Spec] actionbar [{"text":"","bold":true,"font":"uniform"},{"text":" |","strikethrough":true,"font":"default","bold": false,"color": "gray"},{"text":"|   ","strikethrough":false,"font":"default","bold": false,"color": "gray"},{"text":"時間","strikethrough":false,"color": "aqua"},{"text":" : ","color": "gray"},{"score":{"name":"$Min","objective":"F-Timer"}},{"text":"分 "},{"score":{"name":"$0","objective":"F-Timer"}},{"score":{"name":"$Sec","objective":"F-Timer"}},{"text":"秒","strikethrough":false},{"text":"   "},{"score":{"name":"@s","objective":"F-Distance"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"$","objective":"F-Distance"},"color":"yellow"},{"text":"m ","color":"yellow","bold":false},{"selector":"@p[team=Player]","font": "default","bold": false},{"text":"   "},{"text":"マップの範囲","color":"yellow"},{"text":" : ","color": "gray"},{"text":"内","color":"green"},{"text":"   |","strikethrough":false,"font": "default","bold": false,"color": "gray"},{"text":"| ","strikethrough":true,"font": "default","bold": false,"color": "gray"}]
title @a[tag=!F-In_Map,team=Spec] actionbar [{"text":"","bold":true,"font":"uniform"},{"text":" |","strikethrough":true,"font":"default","bold": false,"color": "gray"},{"text":"|   ","strikethrough":false,"font":"default","bold": false,"color": "gray"},{"text":"時間","strikethrough":false,"color": "aqua"},{"text":" : ","color": "gray"},{"score":{"name":"$Min","objective":"F-Timer"}},{"text":"分 "},{"score":{"name":"$0","objective":"F-Timer"}},{"score":{"name":"$Sec","objective":"F-Timer"}},{"text":"秒","strikethrough":false},{"text":"   "},{"score":{"name":"@s","objective":"F-Distance"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"$","objective":"F-Distance"},"color":"yellow"},{"text":"m ","color":"yellow","bold":false},{"selector":"@p[team=Player]","font": "default","bold": false},{"text":"   "},{"text":"マップの範囲","color":"yellow"},{"text":" : ","color": "gray"},{"text":"外","color":"red"},{"text":"   |","strikethrough":false,"font": "default","bold": false,"color": "gray"},{"text":"| ","strikethrough":true,"font": "default","bold": false,"color": "gray"}]