#   load by 
#
#   actionbar 制御
#----------------------------------


# Player
execute unless score $Timer F-Timer <= $HintTimer F-Timer run title @a[team=Player] actionbar [{"text":"","bold":true,"font":"uniform"},{"text":" |","strikethrough":true,"font":"default","bold": false,"color": "gray"},{"text":"|   ","strikethrough":false,"font":"default","bold": false,"color": "gray"},{"text":"時間","strikethrough":false,"color": "aqua"},{"text":" : ","color": "gray"},{"score":{"name":"$Min","objective":"F-Timer"}},{"text":"分 "},{"score":{"name":"$0","objective":"F-Timer"}},{"score":{"name":"$Sec","objective":"F-Timer"}},{"text":"秒","strikethrough":false},{"text":"   |","strikethrough":false,"font": "default","bold": false,"color": "gray"},{"text":"| ","strikethrough":true,"font": "default","bold": false,"color": "gray"}]

execute if score $Timer F-Timer <= $HintTimer F-Timer run title @a[tag=F-In_Map,team=Player] actionbar [{"text":"","bold":true,"font":"uniform"},{"text":" |","strikethrough":true,"font":"default","bold": false,"color": "gray"},{"text":"|   ","strikethrough":false,"font":"default","bold": false,"color": "gray"},{"text":"時間","strikethrough":false,"color": "aqua"},{"text":" : ","color": "gray"},{"score":{"name":"$Min","objective":"F-Timer"}},{"text":"分 "},{"score":{"name":"$0","objective":"F-Timer"}},{"score":{"name":"$Sec","objective":"F-Timer"}},{"text":"秒","strikethrough":false},{"text":"     "},{"text":"マップの範囲","color":"yellow"},{"text":" : ","color": "gray"},{"text":"内","color":"green"},{"text":"   |","strikethrough":false,"font": "default","bold": false,"color": "gray"},{"text":"| ","strikethrough":true,"font": "default","bold": false,"color": "gray"}]
execute if score $Timer F-Timer <= $HintTimer F-Timer run title @a[tag=!F-In_Map,team=Player] actionbar [{"text":"","bold":true,"font":"uniform"},{"text":" |","strikethrough":true,"font":"default","bold": false,"color": "gray"},{"text":"|   ","strikethrough":false,"font":"default","bold": false,"color": "gray"},{"text":"時間","strikethrough":false,"color": "aqua"},{"text":" : ","color": "gray"},{"score":{"name":"$Min","objective":"F-Timer"}},{"text":"分 "},{"score":{"name":"$0","objective":"F-Timer"}},{"score":{"name":"$Sec","objective":"F-Timer"}},{"text":"秒","strikethrough":false},{"text":"     "},{"text":"マップの範囲","color":"yellow"},{"text":" : ","color": "gray"},{"text":"外","color":"red"},{"text":"   |","strikethrough":false,"font": "default","bold": false,"color": "gray"},{"text":"| ","strikethrough":true,"font": "default","bold": false,"color": "gray"}]


# Spec
execute as @a[team=Spec] at @p[team=Player] run function random-respawn:core/actionbar/spec