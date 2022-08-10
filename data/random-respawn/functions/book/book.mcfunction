give @s written_book{display:{Name:'[{"text":"-","color":"white","italic":false,"strikethrough":true},{"text":" 設定 ","font":"uniform","color":"light_purple","bold":true,"italic":false,"strikethrough":false},{"text":"-","italic":false,"strikethrough":true}]'},title:"設定",author:"Ryukkun_",pages:['[{"text":"\\n       ","font":"uniform"},{"text":"-","strikethrough":true},{"text":" 時間制限 ","color":"dark_aqua","bold":true},{"text":"-","strikethrough":true},{"text":"\\n         "},{"score":{"name":"$Hour_","objective":"F-Timer"},"color":"green","bold":true},{"text":"時間 ","color":"gray"},{"score":{"name":"$Min_","objective":"F-Timer"},"color":"green","bold":true},{"text":"分 ","color":"gray"},{"text":"\\n"},{"text":"[-60]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $SetTimer F-Timer matches 72001.. store success score $Book-R F-Temp run scoreboard players remove $SetTimer F-Timer 72000"}},{"text":" "},{"text":"[-10]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $SetTimer F-Timer matches 12001.. store success score $Book-R F-Temp run scoreboard players remove $SetTimer F-Timer 12000"}},{"text":" "},{"text":"[-1]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $SetTimer F-Timer matches 1201.. store success score $Book-R F-Temp run scoreboard players remove $SetTimer F-Timer 1200"}},{"text":"  "},{"text":"[+1]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $SetTimer F-Timer 1200"}},{"text":" "},{"text":"[+10]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $SetTimer F-Timer 12000"}},{"text":" "},{"text":"[+60]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $SetTimer F-Timer 72000"}},{"text":"\\n   "},{"text":"[-30]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $SetTimer F-Timer matches 36001.. store success score $Book-R F-Temp run scoreboard players remove $SetTimer F-Timer 36000"}},{"text":" "},{"text":"[-5]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $SetTimer F-Timer matches 6001.. store success score $Book-R F-Temp run scoreboard players remove $SetTimer F-Timer 6000"}},{"text":"     "},{"text":"[+5]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $SetTimer F-Timer 6000"}},{"text":" "},{"text":"[+30]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $SetTimer F-Timer 36000"}},{"text":"\\n\\n      "},{"text":"-","strikethrough":true},{"text":" ヒント表示 ","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"この時間になってから、\\nマップの範囲内に居るのか居ないのかが\\n表示されるようになります。"}]}},{"text":"-","strikethrough":true},{"text":"\\n         "},{"score":{"name":"$Hour_Hint","objective":"F-Timer"},"color":"green","bold":true},{"text":"時間 ","color":"gray"},{"score":{"name":"$Min_Hint","objective":"F-Timer"},"color":"green","bold":true},{"text":"分","color":"gray"},{"text":"\\n"},{"text":"[-60]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $HintTimer F-Timer matches 72000.. store success score $Book-R F-Temp run scoreboard players remove $HintTimer F-Timer 72000"}},{"text":" "},{"text":"[-10]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $HintTimer F-Timer matches 12000.. store success score $Book-R F-Temp run scoreboard players remove $HintTimer F-Timer 12000"}},{"text":" "},{"text":"[-1]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $HintTimer F-Timer matches 1200.. store success score $Book-R F-Temp run scoreboard players remove $HintTimer F-Timer 1200"}},{"text":"  "},{"text":"[+1]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $HintTimer F-Timer 1200"}},{"text":" "},{"text":"[+10]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $HintTimer F-Timer 12000"}},{"text":" "},{"text":"[+60]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $HintTimer F-Timer 72000"}},{"text":"\\n   "},{"text":"[-30]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $HintTimer F-Timer matches 36000.. store success score $Book-R F-Temp run scoreboard players remove $HintTimer F-Timer 36000"}},{"text":" "},{"text":"[-5]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score $HintTimer F-Timer matches 6000.. store success score $Book-R F-Temp run scoreboard players remove $HintTimer F-Timer 6000"}},{"text":"     "},{"text":"[+5]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $HintTimer F-Timer 6000"}},{"text":" "},{"text":"[+30]","color":"gold","underlined":true,"clickEvent":{"action":"run_command","value":"/execute store success score $Book-R F-Temp run scoreboard players add $HintTimer F-Timer 36000"}},{"text":"\\n\\n      "},{"text":"-","strikethrough":true},{"text":" マップ範囲 ","color":"dark_aqua","bold":true},{"text":"-","strikethrough":true},{"text":"\\n   "},{"nbt":"book.map[0]","storage":"random-respawn:","interpret":true},{"text":" "},{"nbt":"book.map[1]","storage":"random-respawn:","interpret":true},{"text":" "},{"nbt":"book.map[2]","storage":"random-respawn:","interpret":true},{"text":" "},{"nbt":"book.map[3]","storage":"random-respawn:","interpret":true}]','[{"text":"\\n      ","font":"uniform"},{"text":"-","strikethrough":true},{"text":" マップ選択 ","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"ここで選択されたマップでゲームをプレイすることになります\\n前の試合と被らないようにすることをお勧めします"}]}},{"text":"-","strikethrough":true},{"text":"\\n  "},{"text":"[今いる場所]","color":"gold","bold":true,"underlined":true,"clickEvent": {"action": "run_command","value": "/function random-respawn:map-center/main"}},{"text":" "},{"text":"[ランダム]","color":"gold","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"ランダムな座標で自動的に選択されます"}]},"clickEvent": {"action": "run_command","value": "/function random-respawn:map-center/random/check"}},{"text":"\\n              "},{"text":"[TP]","color":"light_purple","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"現在選択されているマップへTP"}]},"clickEvent": {"action": "run_command","value": "/tp @s @e[type=armor_stand,tag=map-center,limit=1]"}},{"text":" "},{"text":"[Reset]","color":"red","underlined":true,"clickEvent": {"action": "run_command","value": "/kill @e[type=armor_stand,tag=map-center]"}},{"text":"\\n\\n     "},{"text":"-","strikethrough":true},{"text":" ゲームルール ","color":"dark_aqua","bold":true},{"text":"-","strikethrough":true},{"text":"\\n "},{"text":" keepInventory","color":"gray","bold": true,"hoverEvent":{"action":"show_text","contents":[{"text":"死んでしまった場合でも、アイテムを保持するかしないか"}]}},{"text":"\'","color": "yellow"},{"text":"\'   ","bold": true,"color": "yellow"},{"nbt":"book.gl.keepI","storage":"random-respawn:","interpret":true},{"text":"\\n "},{"text":" reducedDebugInfo","color": "gray","bold": true,"hoverEvent":{"action":"show_text","contents":[{"text":"デバック情報 (F3) にて、座標などの表記を隠すかどうか"}]}},{"text":" "},{"nbt":"book.gl.debug","storage":"random-respawn:","interpret":true},{"text":"\\n\\n  "},{"text":"-","strikethrough":true},{"text":" 観戦 ゲームモード ","color":"dark_aqua","bold":true},{"text":"-","strikethrough":true},{"text":"\\n    "},{"nbt":"book.gm[0]","storage":"random-respawn:","interpret":true},{"text":"  "},{"nbt":"book.gm[1]","storage":"random-respawn:","interpret":true},{"text":"\\n\\n  ※ 地図について","bold": true,"color": "gray","hoverEvent": {"action": "show_text","contents": [{"text": "左手に地図を持った状態で開始ボタンを押すことで、\\nその地図をゲームプレイ中のプレイヤーに持たせ\\n観戦者が地図上からプレイヤーの動向を監視することができます\\nまあ、観戦者が複数居るとわかりにくくなるんで 使う機会は少ないね ;w;\\nMAP範囲 4096 x 4096 では使えません"}]}}]','[{"text":"\\n\\n        "},{"text":"▾","color":"dark_aqua"},{"text":"＿＿＿＿"},{"text":"▾","color":"dark_aqua"},{"text":"\\n           "},{"text":"開始","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/function #random-respawn:start"}},{"text":"\\n      "},{"text":"▴","color":"dark_aqua"},{"text":"￣￣￣￣￣￣￣￣￣"},{"text":"▴","color":"dark_aqua"}]'],RandomRespawn:[{tag:2b}]} 1