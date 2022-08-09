#   load by random-respawn:tick
#   
#   本の内容、時間などを修正
#------------------------------------------------------

########## Main Timer

# Hour
scoreboard players operation $Hour_ F-Timer = $SetTimer F-Timer
scoreboard players operation $Hour_ F-Timer += $19 F-Temp
scoreboard players operation $Hour_ F-Timer /= $72000 F-Temp

# Min
scoreboard players operation $Min_ F-Timer = $SetTimer F-Timer
scoreboard players operation $Min_ F-Timer += $19 F-Temp
scoreboard players operation $Min_ F-Timer /= $1200 F-Temp
scoreboard players operation $Min_ F-Timer %= $60 F-Temp



########## Hint Timer

# Hour
scoreboard players operation $Hour_Hint F-Timer = $HintTimer F-Timer
scoreboard players operation $Hour_Hint F-Timer += $19 F-Temp
scoreboard players operation $Hour_Hint F-Timer /= $72000 F-Temp

# Min
scoreboard players operation $Min_Hint F-Timer = $HintTimer F-Timer
scoreboard players operation $Min_Hint F-Timer += $19 F-Temp
scoreboard players operation $Min_Hint F-Timer /= $1200 F-Temp
scoreboard players operation $Min_Hint F-Timer %= $60 F-Temp



########## Map Distance

execute unless score $gm F-Temp matches 1 run data modify storage random-respawn: book.map[0] set value '{"text":"[512]","color":"gray","underlined":true,"clickEvent": {"action": "run_command","value": "/execute store success score $Book-R F-Temp run scoreboard players set $gm F-Temp 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"512m x 512m  の範囲\\n 地図の縮尺 1:4\\n  (レベル 2/4)"}]}}'
execute if score $gm F-Temp matches 1 run data modify storage random-respawn: book.map[0] set value '{"text":"[512]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"512m x 512m  の範囲\\n 地図の縮尺 1:4\\n  (レベル 2/4)"}]}}'

execute unless score $gm F-Temp matches 2 run data modify storage random-respawn: book.map[1] set value '{"text":"[1024]","color":"gray","underlined":true,"clickEvent": {"action": "run_command","value": "/execute store success score $Book-R F-Temp run scoreboard players set $gm F-Temp 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"1024m x 1024m  の範囲\\n 地図の縮尺 1:8\\n  (レベル 3/4)"}]}}'
execute if score $gm F-Temp matches 2 run data modify storage random-respawn: book.map[1] set value '{"text":"[1024]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"1024m x 1024m  の範囲\\n 地図の縮尺 1:8\\n  (レベル 3/4)"}]}}'

execute unless score $gm F-Temp matches 3 run data modify storage random-respawn: book.map[2] set value '{"text":"[2048]","color":"gray","underlined":true,"clickEvent": {"action": "run_command","value": "/execute store success score $Book-R F-Temp run scoreboard players set $gm F-Temp 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"2048m x 2048m  の範囲\\n 地図の縮尺 1:16\\n  (レベル 4/4 [縮尺最大])"}]}}'
execute if score $gm F-Temp matches 3 run data modify storage random-respawn: book.map[2] set value '{"text":"[2048]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"2048m x 2048m  の範囲\\n 地図の縮尺 1:16\\n  (レベル 4/4 [縮尺最大])"}]}}'

execute unless score $gm F-Temp matches 4 run data modify storage random-respawn: book.map[3] set value '{"text":"[4086]","color":"gray","underlined":true,"clickEvent": {"action": "run_command","value": "/execute store success score $Book-R F-Temp run scoreboard players set $gm F-Temp 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"4096m x 4096m  の範囲\\n 縮尺最大の地図 計4枚分"}]}}'
execute if score $gm F-Temp matches 4 run data modify storage random-respawn: book.map[3] set value '{"text":"[4086]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"4096m x 4096m  の範囲\\n 縮尺最大の地図 計4枚分"}]}}'



########## Give Book
execute as @a store success score @s F-Temp run clear @s written_book{RandomRespawn:[{tag:2b}]}
execute as @a[scores={F-Temp=1..}] run function random-respawn:book/book
scoreboard players reset @a F-Temp
scoreboard players set $Book-R F-Temp 0