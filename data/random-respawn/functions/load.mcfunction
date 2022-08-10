#load

gamerule logAdminCommands false
gamerule commandBlockOutput false
scoreboard objectives add F-Timer dummy
scoreboard objectives add F-Meet dummy
scoreboard objectives add F-Temp dummy
scoreboard objectives add F-MapCenter dummy
scoreboard objectives add F-Member dummy
scoreboard objectives add F-GameCount dummy
scoreboard objectives add F-Used-Lp minecraft.used:minecraft.lingering_potion
scoreboard objectives add F-Leave minecraft.custom:leave_game
scoreboard objectives add F-Distance dummy
team add Spec
team add Player
team modify Spec color gray
team modify Player color green
team modify Spec collisionRule never
team modify Player collisionRule never
team modify Spec prefix [{"text":" ","color":"#6a6a6a","strikethrough":true},{"text":"|","color":"#7f7f7f"},{"text":"|","color":"#959595","strikethrough":false},{"text":"観","color":"#c1c1c1","strikethrough":false},{"text":"戦","color":"#c1c1c1","strikethrough":false},{"text":"|","color":"#959595","strikethrough":false},{"text":"|","color":"#7f7f7f"},{"text":" ","color":"#6a6a6a"},{"text":" ","strikethrough":false}]
team modify Player prefix [{"text":" ","color":"#008e12","strikethrough":true},{"text":"|","color":"#1aaa28","strikethrough":true},{"text":"|","color":"#34c73e","strikethrough":false},{"text":"参","color":"#4de353","strikethrough":false},{"text":"加","color":"#4de353","strikethrough":false},{"text":"|","color":"#34c73e","strikethrough":false},{"text":"|","color":"#1aaa28","strikethrough":true},{"text":" ","color":"#008e12","strikethrough":true},{"text":" ","strikethrough":false}]
scoreboard players set $1200 F-Temp 1200
scoreboard players set $72000 F-Temp 72000
scoreboard players set $100 F-Temp 100
scoreboard players set $10 F-Temp 10
scoreboard players set $60 F-Temp 60
scoreboard players set $20 F-Temp 20
scoreboard players set $19 F-Temp 19
scoreboard players set $64 F-Temp 64
scoreboard players set $256 F-Temp 256
scoreboard players set $512 F-Temp 512
scoreboard players set $1024 F-Temp 1024
scoreboard players set $2048 F-Temp 2048
scoreboard players set $4096 F-Temp 4096
execute unless score $Timer F-Timer matches 0.. run scoreboard players set $Timer F-Timer -1
execute unless score $ F-GameCount matches 0.. run scoreboard players set $ F-GameCount 0
execute unless score $SetTimer F-Timer matches 0.. run scoreboard players set $SetTimer F-Timer 72000
execute unless score $HintTimer F-Timer matches 0.. run scoreboard players set $HintTimer F-Timer 24000
execute unless score $random-map F-Temp matches 0.. run scoreboard players set $random-map F-Temp 0
execute unless score $spec-gm F-Temp matches 0.. run scoreboard players set $spec-gm F-Temp 2
execute unless data storage random-respawn: book run data merge storage random-respawn: {book:{map:['','','',''],gm:['','']}}

# version
forceload add 0 0
summon minecraft:armor_stand ~ -70 ~ {NoGravity:1b,Silent:1b,Marker:1b,Tags:["F-TestY"]}
schedule function random-respawn:test-y 10s