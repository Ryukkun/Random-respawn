#load

gamerule logAdminCommands false
gamerule commandBlockOutput false
scoreboard objectives add F-Timer dummy
scoreboard objectives add F-Meet dummy
scoreboard objectives add F-Temp dummy
scoreboard objectives add F-MapCenter dummy
team add Spec
team add Player
team modify Spec color gray
team modify Spec prefix [{"text":" ","color":"#6a6a6a","strikethrough":true},{"text":"|","color":"#7f7f7f"},{"text":"|","color":"#959595","strikethrough":false},{"text":"観","color":"#c1c1c1","strikethrough":false},{"text":"戦","color":"#c1c1c1","strikethrough":false},{"text":"|","color":"#959595","strikethrough":false},{"text":"|","color":"#7f7f7f"},{"text":" ","color":"#6a6a6a"},{"text":" ","strikethrough":false}]
team modify Player prefix [{"text":" ","color":"#c2f0ff","strikethrough":true},{"text":"|","color":"#d1f4ff"},{"text":"|","color":"#e0f7ff","strikethrough":false},{"text":"参","color":"#f7fdff","strikethrough":false},{"text":"加","color":"#effbff","strikethrough":false},{"text":"者","color":"#effbff","strikethrough":false},{"text":"|","color":"#e0f7ff","strikethrough":false},{"text":"|","color":"#d1f4ff"},{"text":" ","color":"#c2f0ff"},{"text":" ","strikethrough":false}]
scoreboard players set $1200 F-Temp 1200
scoreboard players set $20 F-Temp 20
scoreboard players set $19 F-Temp 19
scoreboard players set $64 F-Temp 64
scoreboard players set $256 F-Temp 256
scoreboard players set $512 F-Temp 512
scoreboard players set $1024 F-Temp 1024
scoreboard players set $2048 F-Temp 2048
scoreboard players set $4096 F-Temp 4096